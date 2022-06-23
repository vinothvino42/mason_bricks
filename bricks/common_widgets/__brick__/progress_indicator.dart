import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_util/ui_util.dart';

/// A custom circular progress indicator widget for showing indefinite loading
///
/// [CustomProgressIndicator] is a platform adaptive indicator, you can change
/// the color of the indicator
class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({Key? key, this.color}) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Platform.isIOS
          ? CupertinoActivityIndicator(color: color)
          : SizedBox(
              height: 18.0,
              width: 18.0,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(
                  color ?? Palette.yellowGradientBottom,
                ),
              ),
            ),
    );
  }
}

/// A custom tiny circular progress indicator widget for showing indefinite loading
///
/// [CustomTinyProgressIndicator] is a platform adaptive indicator, you can change
/// the color of the indicator
class CustomTinyProgressIndicator extends StatelessWidget {
  const CustomTinyProgressIndicator({Key? key, this.color}) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoActivityIndicator(color: color)
        : SizedBox(
            height: 5.2,
            width: 5.2,
            child: CircularProgressIndicator(
              strokeWidth: 2.0,
              valueColor: color == null
                  ? null
                  : AlwaysStoppedAnimation<Color>(
                      color!,
                    ),
            ),
          );
  }
}
