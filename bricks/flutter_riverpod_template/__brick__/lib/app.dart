import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  const App({Key? key, this.isDebugMode = false}) : super(key: key);

  final bool isDebugMode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: '{{app_name}}',
      debugShowCheckedModeBanner: isDebugMode,
      showPerformanceOverlay: isDebugMode,
      // home: const SplashPage(),
    );
  }
}
