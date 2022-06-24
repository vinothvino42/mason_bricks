import 'package:flutter/material.dart';
import 'package:ui_util/ui_util.dart';

class UserInitial extends StatelessWidget {
  const UserInitial({
    Key? key,
    required this.name,
    this.color = Palette.darkViolet2,
    this.size,
  }) : super(key: key);

  final Color color;
  final String name;
  final double? size;

  @override
  Widget build(context) {
    final avatarSize = size ?? SizeConfig.bsh(size10);

    return ClipRRect(
      borderRadius: BorderRadius.circular(avatarSize / 2),
      child: Container(
        width: avatarSize,
        height: avatarSize,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              color,
              color.withOpacity(0.8),
            ],
          ),
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: EdgeInsets.all(SizeConfig.bsh(size2)),
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              name[0],
              style: const TextStyle(
                color: Palette.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
