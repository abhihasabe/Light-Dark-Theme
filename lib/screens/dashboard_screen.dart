import 'package:flutter/material.dart';
import 'package:theme/widget/change_theme_button_widget.dart';

class Dashbaord extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Dashbaord();
  }
}

class _Dashbaord extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(actions: [
        ChangeThemeButtonWidget(),
      ], title: Text("App Data"),),
      body: Column(
        mainAxisAlignment:  MainAxisAlignment.center,
        children: [
          Center(child: Text("App Data"))
        ],
      ),
    );
  }
}
