import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/providers/theme_provider.dart';
import 'package:theme/screens/dashboard_screen.dart';
import 'package:theme/screens/splash_screen.dart';
import 'package:theme/theme/theme.dart';
import 'route/route.dart' as route;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Flutter Inital';

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
        initialRoute: route.splashPage,
        onGenerateRoute: route.controller,
      );
    },
  );
}
