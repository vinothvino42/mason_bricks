//TODO: In this file, you can write custom logic for development (logger, dev base url, etc) before adding the App widget to the widget tree

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [_ProviderLogger()],
      child: const App(isDebugMode: true),
    ),
  );
}

class _ProviderLogger extends ProviderObserver {
  @override
  void didAddProvider(
      ProviderBase provider, Object? value, ProviderContainer container) {
    log(
      '''
      {
        "provider": "${provider.name ?? provider.runtimeType}",
      }
      ''',
    );
    super.didAddProvider(provider, value, container);
  }

  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    log(
      '''
      {
        "provider": "${provider.name ?? provider.runtimeType}",
        "newValue": "$newValue"
      }
      ''',
    );
    super.didUpdateProvider(provider, previousValue, newValue, container);
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer containers) {
    log(
      '''
      {
        "provider": "${provider.name ?? provider.runtimeType}",
      }
      ''',
    );
    super.didDisposeProvider(provider, containers);
  }
}
