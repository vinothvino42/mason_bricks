import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// [Alert] - A simple alert utility for showing `Android's` style `Toast` message
///
/// It can be used in any situations like exception, invalid inputs etc
class Alert {
  Alert._();

  static void showToast(String text,
      {bool isLong = true, ToastGravity gravity = ToastGravity.BOTTOM}) {
    Fluttertoast.showToast(
        msg: text,
        textColor: Colors.black,
        backgroundColor: Colors.white.withOpacity(0.9),
        toastLength: isLong ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
        gravity: gravity);
  }
}
