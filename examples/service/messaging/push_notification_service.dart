import 'dart:math';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_util/ui_util.dart';

import '../../providers.dart';

final pushNotificationServiceProvider = Provider<PushNotificationService>(
    (ref) => PushNotificationService(reader: ref.read));

class PushNotificationService {
  PushNotificationService({required this.reader});

  final Reader reader;
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initialize(BuildContext context) async {
    await _firebaseMessaging.requestPermission(sound: true);
    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    _firebaseMessaging.getToken().then((fcmToken) async {
      reader(secureStorageProvider).deviceToken = fcmToken;
    });

    FirebaseMessaging.onBackgroundMessage(
      firebaseMessagingBackgroundHandler,
    );

    AwesomeNotifications().initialize('resource://drawable/notification_icon', [
      NotificationChannel(
          channelKey: 'basic_channel',
          channelName: 'Basic notifications',
          channelDescription: 'Notification channel for basic tests',
          defaultColor: Palette.yellowGradientTop,
          importance: NotificationImportance.Max,
          defaultRingtoneType: DefaultRingtoneType.Notification,
          vibrationPattern: highVibrationPattern,
          playSound: true),
      NotificationChannel(
          defaultRingtoneType: DefaultRingtoneType.Notification,
          channelKey: 'big_text',
          channelName: 'Big text notifications',
          channelDescription: 'Notifications with a expandable body text',
          defaultColor: Palette.yellowGradientTop,
          vibrationPattern: highVibrationPattern,
          importance: NotificationImportance.Max,
          playSound: true),
    ]);
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // Foreground: Message also contained a notification
      _handleMessage(message.data, reader: reader, isForeground: true);
    });
  }
}

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  _handleMessage(message.data);
}

void _handleMessage(Map<String, dynamic> data,
    {Reader? reader, bool isForeground = false}) {
  final title = data['title'];
  final subtitle = data['body'];
  if (isForeground) {
    showNotification(title, subtitle, data);
  }
}

void showNotification(
  String title,
  String subtitle,
  Map<String, dynamic> payload,
) {
  final Map<String, String> convertedPayload =
      payload.map((key, value) => MapEntry(key, value.toString()));
  AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: Random().nextInt(23244),
      channelKey: 'basic_channel',
      title: title,
      body: subtitle,
      icon: 'resource://drawable/notification_icon',
      showWhen: true,
      backgroundColor: Palette.yellowGradientBottom,
      displayOnForeground: true,
      displayOnBackground: true,
      payload: convertedPayload,
      criticalAlert: true,
    ),
  );
}
