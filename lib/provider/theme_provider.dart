import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance!.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static ThemeData baseLight = ThemeData.light();
  static ThemeData baseDark = ThemeData.dark();

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.black,
    accentColor: Colors.white ,
    buttonColor: Colors.grey.shade900,
    cardColor: Colors.grey.shade900,
    errorColor: Colors.red,
    iconTheme: IconThemeData(color: Colors.purple.shade200, opacity: 0.8),
    colorScheme: ColorScheme.dark(),
    textTheme: _customTextTheme(baseDark.textTheme,Colors.white, "darkTheme"),
    primaryTextTheme: _customTextTheme(baseDark.primaryTextTheme,Colors.white, "darkTheme"),
    accentTextTheme: _customTextTheme(baseDark.accentTextTheme,Colors.white, "darkTheme"),
  );

  static final lightTheme = ThemeData(
    accentColor: const Color(0xFF442B2D),
    primaryColor: const Color(0xFFFEDBD0),
    buttonColor: const Color(0xFFFEDBD0),
    scaffoldBackgroundColor: Colors.white,
    cardColor: const Color(0xFF883B2D),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: const Color(0xFFFEDBD0),
    ),
    errorColor: Colors.red,
    buttonTheme: ThemeData.light().buttonTheme.copyWith(
      buttonColor: const Color(0xFFFEDBD0),
      colorScheme: ThemeData.light().colorScheme.copyWith(
        secondary: const Color(0xFF442B2D),
      ),
    ),
    buttonBarTheme: ThemeData.light().buttonBarTheme.copyWith(
      buttonTextTheme: ButtonTextTheme.accent,
    ),
    primaryIconTheme: ThemeData.light().primaryIconTheme.copyWith(
      color: const Color(0xFF442B2D),
    ),
    textTheme: _customTextTheme(baseLight.textTheme,Colors.black, "lightTheme"),
    primaryTextTheme: _customTextTheme(baseLight.primaryTextTheme,Colors.black, "lightTheme"),
    accentTextTheme: _customTextTheme(baseLight.accentTextTheme,Colors.black, "lightTheme"),
    colorScheme: ColorScheme.light(),
    iconTheme: IconThemeData(color: Colors.red, opacity: 0.8),
  );

  static TextTheme _customTextTheme(TextTheme base, Color color, String theme) {
    return base.copyWith(
      headline6: base.headline6!.copyWith(fontWeight: FontWeight.w500, fontSize: 20.0, letterSpacing:  0.15, color: theme.contains("darkTheme")?Colors.white:Colors.black87),
      headline5: base.headline5!.copyWith(fontWeight: FontWeight.w400, fontSize: 24.0, letterSpacing:  0.0,  color: theme.contains("darkTheme")?Colors.white:Colors.black87),
      headline4: base.headline4!.copyWith(fontWeight: FontWeight.w400, fontSize: 34.0, letterSpacing:  0.25, color: theme.contains("darkTheme")?Colors.white70:Colors.black54),
      headline3: base.headline3!.copyWith(fontWeight: FontWeight.w400, fontSize: 48.0, letterSpacing:  0.0,  color: theme.contains("darkTheme")?Colors.white70:Colors.black54),
      headline2: base.headline2!.copyWith(fontWeight: FontWeight.w300, fontSize: 60.0, letterSpacing: -0.5,  color: theme.contains("darkTheme")?Colors.white70:Colors.black54),
      headline1: base.headline1!.copyWith(fontWeight: FontWeight.w300, fontSize: 96.0, letterSpacing: -1.5,  color: theme.contains("darkTheme")?Colors.white70:Colors.black54),
      subtitle2: base.subtitle2!.copyWith(fontWeight: FontWeight.w500, fontSize: 14.0, letterSpacing:  0.10, color: theme.contains("darkTheme")?Colors.white:Colors.black87),
      subtitle1: base.subtitle1!.copyWith(fontWeight: FontWeight.w400, fontSize: 16.0, letterSpacing:  0.15, color: theme.contains("darkTheme")?Colors.white:Colors.black),
      bodyText2: base.bodyText2!.copyWith(fontWeight: FontWeight.w400, fontSize: 14.0, letterSpacing:  0.25, color: theme.contains("darkTheme")?Colors.white:Colors.black87),
      bodyText1: base.bodyText1!.copyWith(fontWeight: FontWeight.w400, fontSize: 16.0, letterSpacing:  0.5,  color: theme.contains("darkTheme")?Colors.white:Colors.black87),
      button: base.button!.copyWith(fontWeight: FontWeight.w400, fontSize: 14.0, letterSpacing: 0.75 , color: theme.contains("darkTheme")?Colors.white:Colors.black87),
      caption: base.caption!.copyWith(fontWeight: FontWeight.w400, fontSize: 12.0, letterSpacing: 0.4 , color: theme.contains("darkTheme")?Colors.white70:Colors.black),
      overline: base.overline!.copyWith(fontWeight: FontWeight.w400, fontSize: 10.0, letterSpacing: 1.5, color: theme.contains("darkTheme")?Colors.white:Colors.black54 ),
    ).apply(
      fontFamily: 'Roboto',
    );
  }
}
