import 'package:flutter/material.dart';
import 'package:theme/utils/connection.helper.dart';
import 'package:theme/widgets/toast.dart';

import 'dashboard_screen.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Splash();
  }
}

class _Splash extends State {

  GlobalKey<ScaffoldState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: key,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: InkWell(
                  child: Icon(Icons.supervised_user_circle_outlined, size: 100),
                  onTap: () async => await ConnectionHelper.hasConnection() == true
                      ? Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Dashboard()),
                          (Route<dynamic> route) => false)
                      : ToastWidget.show("Please Check Internet Connection"))),
        ],
      ),
    );
  }
}
