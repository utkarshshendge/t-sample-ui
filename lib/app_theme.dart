import 'package:flutter/material.dart';

class TalawaTheme {
  static const Color primatyColorShadeLightShade = Color(0xff50C083);
  static const Color SecondaryColorLightShade = Color(0xffFD9F5F);
  static const Color SecondaryColorDarkShade = Color(0xffFE6B34);
  static const Color secondaryColor1 = Color(0xffFFBD59);
  static Color customGrey = Colors.grey.shade400;
  static const Color grey = Color(0xFF3A5160);
  static TextTheme _buildTextTheme(TextTheme base) {
    const String fontName = 'WorkSans';
    return base.copyWith(
      button: base.button.copyWith(fontFamily: fontName),
    );
  }

  static Decoration textBoxDecoration = BoxDecoration(
    color: Color(0xFFFFFFFF),
    borderRadius: const BorderRadius.all(
      Radius.circular(10.0),
    ),
    boxShadow: <BoxShadow>[
      BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          offset: const Offset(0, 2),
          blurRadius: 8.0),
    ],
  );

  static ThemeData buildLightTheme() {
    final Color primaryColor = Color(0xff31BC6B);
    final Color secondaryColor = Color(0xffFFBD59);
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );
    final ThemeData lightThemeData = ThemeData.light();
    return lightThemeData.copyWith(
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      backgroundColor: const Color(0xFFFFFFFF),
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: _buildTextTheme(lightThemeData.textTheme),
      primaryTextTheme: _buildTextTheme(lightThemeData.primaryTextTheme),
      accentTextTheme: _buildTextTheme(lightThemeData.accentTextTheme),
      platform: TargetPlatform.iOS,
    );
  }
}
