import 'package:flutter/material.dart';

import 'colors.dart';

class MyThemes {
  static ThemeData baseLight = ThemeData.light();
  static ThemeData baseDark = ThemeData.dark();

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: backgroundDarkColor,
    cardColor: cardDarkColor,
    primaryColor: primaryDarkColor,
    accentColor: accentDarkColor,
    errorColor: errorColor,
    iconTheme: IconThemeData(color: Colors.purple.shade200, opacity: 0.8),
    textTheme: _customTextTheme(baseDark.textTheme,textDarkColor, "darkTheme"),
    primaryTextTheme: _customTextTheme(baseDark.primaryTextTheme,textDarkColor, "darkTheme"),
    accentTextTheme: _customTextTheme(baseDark.accentTextTheme,textDarkColor, "darkTheme"),
    colorScheme: ColorScheme.dark(),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: backgroundColor,
    cardColor: cardColor,
    primaryColor: primaryColor,
    accentColor: accentColor,
    errorColor: errorColor,
    iconTheme: IconThemeData(color: Colors.red, opacity: 0.8),
    buttonTheme: ThemeData.light().buttonTheme.copyWith(buttonColor: const Color(0xFFFEDBD0),
        colorScheme: ThemeData.light().colorScheme.copyWith(secondary: const Color(0xFF442B2D))),
    primaryIconTheme: ThemeData.light().primaryIconTheme.copyWith(color: const Color(0xFF442B2D)),
    textTheme: _customTextTheme(baseLight.textTheme,textColor, "lightTheme"),
    primaryTextTheme: _customTextTheme(baseLight.primaryTextTheme,textColor, "lightTheme"),
    accentTextTheme: _customTextTheme(baseLight.accentTextTheme,textColor, "lightTheme"),
    colorScheme: ColorScheme.light(),
  );

  static TextTheme _customTextTheme(TextTheme base, Color color, String theme) {
    return base.copyWith(
      headline6: base.headline6!.copyWith(fontWeight: FontWeight.w500, fontSize: 20.0, letterSpacing:  0.15, color: theme.contains("darkTheme")?textDarkColor:textColor),
      headline5: base.headline5!.copyWith(fontWeight: FontWeight.w400, fontSize: 24.0, letterSpacing:  0.0,  color: theme.contains("darkTheme")?textDarkColor:textColor),
      headline4: base.headline4!.copyWith(fontWeight: FontWeight.w400, fontSize: 34.0, letterSpacing:  0.25, color: theme.contains("darkTheme")?textDarkColor:textColor),
      headline3: base.headline3!.copyWith(fontWeight: FontWeight.w400, fontSize: 48.0, letterSpacing:  0.0,  color: theme.contains("darkTheme")?textDarkColor:textColor),
      headline2: base.headline2!.copyWith(fontWeight: FontWeight.w300, fontSize: 60.0, letterSpacing: -0.5,  color: theme.contains("darkTheme")?textDarkColor:textColor),
      headline1: base.headline1!.copyWith(fontWeight: FontWeight.w300, fontSize: 96.0, letterSpacing: -1.5,  color: theme.contains("darkTheme")?textDarkColor:textColor),
      subtitle2: base.subtitle2!.copyWith(fontWeight: FontWeight.w500, fontSize: 14.0, letterSpacing:  0.10, color: theme.contains("darkTheme")?textDarkColor:textColor),
      subtitle1: base.subtitle1!.copyWith(fontWeight: FontWeight.w400, fontSize: 16.0, letterSpacing:  0.15, color: theme.contains("darkTheme")?textDarkColor:textColor),
      bodyText2: base.bodyText2!.copyWith(fontWeight: FontWeight.w400, fontSize: 14.0, letterSpacing:  0.25, color: theme.contains("darkTheme")?textDarkColor:textColor),
      bodyText1: base.bodyText1!.copyWith(fontWeight: FontWeight.w400, fontSize: 16.0, letterSpacing:  0.5,  color: theme.contains("darkTheme")?textDarkColor:textColor),
      button:    base.button!.copyWith(fontWeight: FontWeight.w400, fontSize: 14.0, letterSpacing: 0.75 , color: theme.contains("darkTheme")?textDarkColor:textColor),
      caption:   base.caption!.copyWith(fontWeight: FontWeight.w400, fontSize: 12.0, letterSpacing: 0.4 , color: theme.contains("darkTheme")?textDarkColor:textColor),
      overline:  base.overline!.copyWith(fontWeight: FontWeight.w400, fontSize: 10.0, letterSpacing: 1.5, color: theme.contains("darkTheme")?textDarkColor:textColor),
    ).apply(fontFamily: 'Roboto');
  }
}