import 'package:flutter/foundation.dart';
import 'dart:async';

/// [Debounce] - A custom debounce class to make some delay to call specific methods
/// inside the callback
///
/// Example: It can be used in the search bar to call api after user finished entering a
/// text in the textfield and with some delay, the api can be called. So that you can
/// reduce the api calls while entering the texts in the textfield
class Debounce {
  final int milliseconds;
  Timer? _timer;

  Debounce({required this.milliseconds});

  run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
