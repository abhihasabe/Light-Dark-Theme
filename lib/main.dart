import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/provider/theme_provider.dart';
import 'package:theme/screens/dashboard_screen.dart';
import 'package:theme/screens/splash_screen.dart';
import 'package:theme/theme/theme.dart';
import 'package:theme/PlatformService.dart';
import 'package:theme/widget/change_theme_button_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Theme';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    builder: (context, _) {
      final themeProvider = Provider.of<ThemeProvider>(context);
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        themeMode: themeProvider.themeMode,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        home: MyHomePage(),
      );
    },
  );
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Dashbaord()/*PlatFormServices.isMobile(context)?Splash():Dashbaord()*/;
  }
}
