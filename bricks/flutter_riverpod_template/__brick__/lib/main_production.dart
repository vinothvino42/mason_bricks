//TODO: In this file, you can write custom logic for production before adding the App widget to the widget tree

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';

void main() {
  runApp(
    ProviderScope(
      child: const App(),
    ),
  );
}
