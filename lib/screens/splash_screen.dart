import 'package:flutter/material.dart';

class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Splash();
  }
}

class _Splash extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Icon(Icons.supervised_user_circle_outlined, size: 100)),
        ],
      ),
    );
  }
}