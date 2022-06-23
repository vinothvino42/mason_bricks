import 'package:flutter/widgets.dart';

const double defaultPadding = size16;
const double cornerRadius = size2;
const double cornerRadiusLarge = size8;

/// [SizeConfig] - A custom class which is used to make responsive layout
/// design user interface
///
/// It uses `MediaQuery` to get the actual device size and it calculates the
/// screen height and width. It returns the size based on the percentage
class SizeConfig {
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double _blockSizeHorizontal = 0;
  static double _blockSizeVertical = 0;
  static double _safeAreaHorizontal = 0;
  static double _safeAreaVertical = 0;
  static double _safeBlockHorizontal = 0;
  static double _safeBlockVertical = 0;

  void init(BuildContext context) {
    final mediaQueryContext = MediaQuery.of(context);

    screenWidth = mediaQueryContext.size.width;
    screenHeight = mediaQueryContext.size.height;
    _blockSizeHorizontal = screenWidth / 100;
    _blockSizeVertical = screenHeight / 100;
    _safeAreaHorizontal =
        mediaQueryContext.padding.left + mediaQueryContext.padding.right;
    _safeAreaVertical =
        mediaQueryContext.padding.top + mediaQueryContext.padding.bottom;
    _safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    _safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }

  /// BSH - BlockSizeHorizonal and use it for ImageBlockSize
  static double bsh(double percentage) {
    return _blockSizeHorizontal * percentage;
  }

  /// BSV - BlockSizeVertical and use it for TextBlockSize
  static double bsv(double percentage) {
    return _blockSizeVertical * percentage;
  }

  /// SBSH - SafeBlockSizeHorizontal and use it for SafeImageBlockSize
  static double sbsh(double percentage) {
    return _safeBlockHorizontal * percentage;
  }

  /// SBSV - SafeBlockSizeVertical and use it for SafeTextBlockSize
  static double sbsv(double percentage) {
    return _safeBlockVertical * percentage;
  }
}

// Sizes
const double size1 = 1;
const double size2 = 2;
const double size4 = 4;
const double size6 = 6;
const double size8 = 8;
const double size10 = 10;
const double size12 = 12;
const double size14 = 14;
const double size16 = 16;
const double size20 = 20;
const double size24 = 24;
const double size28 = 28;

// Vertical SizedBox
final vsBox0 = SizedBox(height: SizeConfig.sbsv(size1));
final vsBox1 = SizedBox(height: SizeConfig.sbsv(size2));
final vsBox2 = SizedBox(height: SizeConfig.sbsv(size4));
final vsBox3 = SizedBox(height: SizeConfig.sbsv(size6));
final vsBox4 = SizedBox(height: SizeConfig.sbsv(size8));
final vsBox5 = SizedBox(height: SizeConfig.sbsv(size10));
final vsBox6 = SizedBox(height: SizeConfig.sbsv(size12));
final vsBox7 = SizedBox(height: SizeConfig.sbsv(size16));
final vsBox8 = SizedBox(height: SizeConfig.sbsv(size20));
final vsBox9 = SizedBox(height: SizeConfig.sbsv(size24));
final vsBox10 = SizedBox(height: SizeConfig.sbsv(size28));

// Horizontal SizedBox
final hsBox0 = SizedBox(width: SizeConfig.sbsh(size1));
final hsBox1 = SizedBox(width: SizeConfig.sbsh(size2));
final hsBox2 = SizedBox(width: SizeConfig.sbsh(size4));
final hsBox3 = SizedBox(width: SizeConfig.sbsh(size6));
final hsBox4 = SizedBox(width: SizeConfig.sbsh(size8));
final hsBox5 = SizedBox(width: SizeConfig.sbsh(size10));
final hsBox6 = SizedBox(width: SizeConfig.sbsh(size12));
final hsBox7 = SizedBox(width: SizeConfig.sbsh(size16));
final hsBox8 = SizedBox(width: SizeConfig.sbsh(size20));
final hsBox9 = SizedBox(width: SizeConfig.sbsh(size24));
final hsBox10 = SizedBox(width: SizeConfig.sbsh(size28));
