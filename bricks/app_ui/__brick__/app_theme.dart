import 'package:flutter/material.dart';

import 'app_text_style.dart';
import 'palette.dart';

const double _smallTextScaleFactor = 0.8;
const double _largeTextScaleFactor = 1.4;

/// [AppTheme] - A complete app theme, used for the entire app
///
/// It can be customized by using `ThemeData` widget or `copyWith` method at anytime later for specific widgets
class AppTheme {
  static ThemeData get medium {
    return ThemeData(
      scaffoldBackgroundColor: Palette.blackBackground,
      colorScheme: ColorScheme.fromSwatch(
        accentColor: Palette.yellowGradientBottom,
        brightness: Brightness.dark,
      ),
      appBarTheme: _appBarTheme,
      bottomNavigationBarTheme: _bottomNavigationBarTheme,
      textButtonTheme: _textButtonTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      textTheme: _textTheme,
      dialogBackgroundColor: Palette.blackBackground,
      dialogTheme: _dialogTheme,
      tooltipTheme: _tooltipTheme,
      bottomSheetTheme: _bottomSheetTheme,
      tabBarTheme: _tabBarTheme,
      dividerTheme: _dividerTheme,
      inputDecorationTheme: _inputDecorationTheme,
      pageTransitionsTheme: _pageTransitionsTheme,
      progressIndicatorTheme: _progressIndicatorTheme,
      iconTheme: _iconTheme,
      checkboxTheme: _checkBoxTheme,
      drawerTheme: _drawerTheme,
      radioTheme: _radioTheme,
      popupMenuTheme: _popupMenuTheme,
    );
  }

  static ThemeData get small {
    return medium.copyWith(textTheme: _smallTextTheme);
  }

  static ThemeData get large {
    return medium.copyWith(textTheme: _largeTextTheme);
  }

  static TextTheme get _textTheme {
    return TextTheme(
      headline1: AppTextStyle.headline1,
      headline2: AppTextStyle.headline2,
      headline3: AppTextStyle.headline3,
      headline4: AppTextStyle.headline4,
      subtitle1: AppTextStyle.subtitle1,
      subtitle2: AppTextStyle.subtitle2,
      bodyText1: AppTextStyle.bodyText1,
      bodyText2: AppTextStyle.bodyText2,
      caption: AppTextStyle.caption,
      button: AppTextStyle.button,
    );
  }

  static TextTheme get _smallTextTheme {
    return TextTheme(
      headline1: AppTextStyle.headline1.copyWith(
        fontSize: _textTheme.headline1!.fontSize! * _smallTextScaleFactor,
      ),
      headline2: AppTextStyle.headline2.copyWith(
        fontSize: _textTheme.headline2!.fontSize! * _smallTextScaleFactor,
      ),
      headline3: AppTextStyle.headline3.copyWith(
        fontSize: _textTheme.headline3!.fontSize! * _smallTextScaleFactor,
      ),
      headline4: AppTextStyle.headline4.copyWith(
        fontSize: _textTheme.headline4!.fontSize! * _smallTextScaleFactor,
      ),
      subtitle1: AppTextStyle.subtitle1.copyWith(
        fontSize: _textTheme.subtitle1!.fontSize! * _smallTextScaleFactor,
      ),
      subtitle2: AppTextStyle.subtitle2.copyWith(
        fontSize: _textTheme.subtitle2!.fontSize! * _smallTextScaleFactor,
      ),
      bodyText1: AppTextStyle.bodyText1.copyWith(
        fontSize: _textTheme.bodyText1!.fontSize! * _smallTextScaleFactor,
      ),
      bodyText2: AppTextStyle.bodyText2.copyWith(
        fontSize: _textTheme.bodyText2!.fontSize! * _smallTextScaleFactor,
      ),
      caption: AppTextStyle.caption.copyWith(
        fontSize: _textTheme.caption!.fontSize! * _smallTextScaleFactor,
      ),
      button: AppTextStyle.button.copyWith(
        fontSize: _textTheme.button!.fontSize! * _smallTextScaleFactor,
      ),
    );
  }

  static TextTheme get _largeTextTheme {
    return TextTheme(
      headline1: AppTextStyle.headline1.copyWith(
        fontSize: _textTheme.headline1!.fontSize! * _largeTextScaleFactor,
      ),
      headline2: AppTextStyle.headline2.copyWith(
        fontSize: _textTheme.headline2!.fontSize! * _largeTextScaleFactor,
      ),
      headline3: AppTextStyle.headline3.copyWith(
        fontSize: _textTheme.headline3!.fontSize! * _largeTextScaleFactor,
      ),
      headline4: AppTextStyle.headline4.copyWith(
        fontSize: _textTheme.headline4!.fontSize! * _largeTextScaleFactor,
      ),
      subtitle1: AppTextStyle.subtitle1.copyWith(
        fontSize: _textTheme.subtitle1!.fontSize! * _largeTextScaleFactor,
      ),
      subtitle2: AppTextStyle.subtitle2.copyWith(
        fontSize: _textTheme.subtitle2!.fontSize! * _largeTextScaleFactor,
      ),
      bodyText1: AppTextStyle.bodyText1.copyWith(
        fontSize: _textTheme.bodyText1!.fontSize! * _largeTextScaleFactor,
      ),
      bodyText2: AppTextStyle.bodyText2.copyWith(
        fontSize: _textTheme.bodyText2!.fontSize! * _largeTextScaleFactor,
      ),
      caption: AppTextStyle.caption.copyWith(
        fontSize: _textTheme.caption!.fontSize! * _largeTextScaleFactor,
      ),
      button: AppTextStyle.button.copyWith(
        fontSize: _textTheme.button!.fontSize! * _largeTextScaleFactor,
      ),
    );
  }

  static AppBarTheme get _appBarTheme {
    return AppBarTheme(
      backgroundColor: Palette.transparent,
      elevation: 0.0,
      centerTitle: true,
      iconTheme: const IconThemeData(color: Palette.white),
      titleTextStyle: AppTextStyle.headline1.copyWith(
        color: Palette.white,
      ),
    );
  }

  static BottomNavigationBarThemeData get _bottomNavigationBarTheme {
    return const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Palette.darkGrey,
      selectedItemColor: Palette.white,
      unselectedItemColor: Palette.grey,
      selectedIconTheme: IconThemeData(
        color: Palette.white,
      ),
      unselectedIconTheme: IconThemeData(
        color: Palette.grey,
      ),
    );
  }

  static TextButtonThemeData get _textButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Palette.yellowGradientTop,
        textStyle: const TextStyle(fontSize: 14.0),
      ),
    );
  }

  static OutlinedButtonThemeData get _outlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        side: const BorderSide(color: Palette.white, width: 2),
        padding: const EdgeInsets.symmetric(vertical: 16),
        primary: Palette.white,
        minimumSize: const Size(208, 54),
      ),
    );
  }

  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        primary: Palette.black,
        onPrimary: Palette.white,
      ),
    );
  }

  static DialogTheme get _dialogTheme {
    return DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      backgroundColor: Palette.darkGrey,
    );
  }

  static TooltipThemeData get _tooltipTheme {
    return const TooltipThemeData(
      decoration: BoxDecoration(
        color: Palette.black,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      padding: EdgeInsets.all(10),
      textStyle: TextStyle(color: Palette.white),
    );
  }

  static TabBarTheme get _tabBarTheme {
    return TabBarTheme(
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 2.0,
          color: Palette.yellowGradientBottom,
        ),
      ),
      labelColor: Palette.white,
      unselectedLabelColor: Palette.white40,
      indicatorSize: TabBarIndicatorSize.tab,
    );
  }

  static DividerThemeData get _dividerTheme {
    return DividerThemeData(
      space: 0,
      thickness: 0.5,
      color: Palette.grey.shade800,
    );
  }

  static BottomSheetThemeData get _bottomSheetTheme {
    return const BottomSheetThemeData(
      backgroundColor: Palette.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
    );
  }

  static InputDecorationTheme get _inputDecorationTheme {
    return InputDecorationTheme(
      filled: true,
      fillColor: Palette.darkGrey,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      border: InputBorder.none,
      hintStyle: AppTextStyle.bodyText2.copyWith(color: Palette.grey),
    );
  }

  static PageTransitionsTheme get _pageTransitionsTheme {
    return const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
      },
    );
  }

  static ProgressIndicatorThemeData get _progressIndicatorTheme {
    return const ProgressIndicatorThemeData(
        // circularTrackColor: Palette.yellowGradientBottom,
        );
  }

  static IconThemeData get _iconTheme {
    return const IconThemeData(color: Palette.white);
  }

  static CheckboxThemeData get _checkBoxTheme {
    return CheckboxThemeData(
      checkColor: MaterialStateProperty.all(Palette.white),
      fillColor: MaterialStateProperty.all(Palette.darkGrey),
    );
  }

  static DrawerThemeData get _drawerTheme {
    return const DrawerThemeData(
      backgroundColor: Palette.darkGrey,
    );
  }

  static RadioThemeData get _radioTheme {
    return RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith(
        (states) => Palette.yellowGradientBottom,
      ),
    );
  }

  static PopupMenuThemeData get _popupMenuTheme {
    return const PopupMenuThemeData(color: Palette.white);
  }
}
