import 'package:flutter/material.dart';
import 'package:share/share.dart';

/// [ShareIntent] - A custom class used for sharing the content
///
/// In iOS - It uses `UIActivityViewController`
/// In Android - It uses `ACTION_SEND Intent`
class ShareIntent {
  ShareIntent._();

  static void share(BuildContext context, String text) {
    final RenderBox box = context.findRenderObject() as RenderBox;
    Share.share(
      text,
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
    );
  }
}
