import 'package:flutter/material.dart';
import 'package:theme/widgets/change_theme_button_widget.dart';
import 'package:theme/widgets/snackbar.dart';
import 'package:theme/widgets/toolbar.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Dashboard();
  }
}

class _Dashboard extends State {

  GlobalKey<ScaffoldState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: key,
      appBar: ToolbarWidget(hideBackArrow: true,actions: [ChangeThemeButtonWidget()],
        logoWidget: false,title: "Flutter Structure"),
      body: Column(
        mainAxisAlignment:  MainAxisAlignment.center,
        children: [
          Center(child: Text("App Data", style: Theme.of(context).textTheme.bodyText1)),
        ],
      ),
    );
  }
}
