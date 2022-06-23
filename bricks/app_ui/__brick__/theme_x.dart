import 'package:flutter/material.dart';

/// [TextThemeContext] - A custom extension on `BuildContext` to access
/// TextStyle easily with build context
extension TextThemeContext on BuildContext {
  TextTheme textTheme() => Theme.of(this).textTheme;

  TextStyle headline1({Color? textColor, double? fontSize}) => Theme.of(this)
      .textTheme
      .headline1!
      .copyWith(color: textColor, fontSize: fontSize);
  TextStyle headline2({Color? textColor, double? fontSize}) => Theme.of(this)
      .textTheme
      .headline2!
      .copyWith(color: textColor, fontSize: fontSize);
  TextStyle headline3({Color? textColor, double? fontSize}) => Theme.of(this)
      .textTheme
      .headline3!
      .copyWith(color: textColor, fontSize: fontSize);
  TextStyle headline4({Color? textColor, double? fontSize}) => Theme.of(this)
      .textTheme
      .headline4!
      .copyWith(color: textColor, fontSize: fontSize);
  TextStyle headline5({Color? textColor, double? fontSize}) => Theme.of(this)
      .textTheme
      .headline5!
      .copyWith(color: textColor, fontSize: fontSize);
  TextStyle headline6({Color? textColor, double? fontSize}) => Theme.of(this)
      .textTheme
      .headline6!
      .copyWith(color: textColor, fontSize: fontSize);
  TextStyle bodyText1({Color? textColor, double? fontSize}) => Theme.of(this)
      .textTheme
      .bodyText1!
      .copyWith(color: textColor, fontSize: fontSize);
  TextStyle bodyText2({Color? textColor, double? fontSize}) => Theme.of(this)
      .textTheme
      .bodyText2!
      .copyWith(color: textColor, fontSize: fontSize);
  TextStyle subtitle1({Color? textColor, double? fontSize}) => Theme.of(this)
      .textTheme
      .subtitle1!
      .copyWith(color: textColor, fontSize: fontSize);
  TextStyle subtitle2({Color? textColor, double? fontSize}) => Theme.of(this)
      .textTheme
      .subtitle2!
      .copyWith(color: textColor, fontSize: fontSize);
  TextStyle caption({Color? textColor, double? fontSize}) => Theme.of(this)
      .textTheme
      .caption!
      .copyWith(color: textColor, fontSize: fontSize);
  TextStyle overline({Color? textColor, double? fontSize}) => Theme.of(this)
      .textTheme
      .overline!
      .copyWith(color: textColor, fontSize: fontSize);
}

extension ThemeContext on BuildContext {
  ThemeData theme() => Theme.of(this);
}
