import 'package:flutter/widgets.dart';

import 'device_breakpoints.dart';

typedef ResponsiveLayoutWidgetBuilder = Widget Function(BuildContext, Widget?);

/// [ResponsiveLayoutBuilder] - A custom layout builder class which is used to handle
/// when the device layout size changes and it'll return the corresponding builder method
/// with child along with current build context
///
/// Currently, It has three main layout builder
/// - small
/// - medium
/// - large
class ResponsiveLayoutBuilder extends StatelessWidget {
  const ResponsiveLayoutBuilder({
    Key? key,
    required this.small,
    required this.medium,
    this.large,
    this.child,
  }) : super(key: key);

  /// [ResponsiveLayoutWidgetBuilder] for small layout.
  final ResponsiveLayoutWidgetBuilder small;

  /// [ResponsiveLayoutWidgetBuilder] for medium layout.
  final ResponsiveLayoutWidgetBuilder medium;

  /// [ResponsiveLayoutWidgetBuilder] for large layout.
  final ResponsiveLayoutWidgetBuilder? large;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= DeviceBreakpoints.small) {
          return small(context, child);
        }
        if (constraints.maxWidth <= DeviceBreakpoints.medium) {
          return (medium).call(context, child);
        }

        return (large ?? medium)(context, child);
      },
    );
  }
}
