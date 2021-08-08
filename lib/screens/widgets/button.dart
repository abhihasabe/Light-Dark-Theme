import 'package:flutter/material.dart';
import 'package:theme/screens/widgets/text.dart';
import 'package:theme/theme/colors.dart' as colors;

class ButtonWidget extends StatelessWidget {
  final String? label;
  final Function? onPress;
  final bool? disabled;
  final bool? transparent;
  final IconData? icon;
  final bool? facebook;

  final double _elevation = 3;

  const ButtonWidget(
      {Key? key,
      this.label,
      this.onPress,
      this.disabled,
      this.transparent,
      this.icon,
      this.facebook})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final action = disabled == true ? null : onPress;

    Color backgroundColor = colors.accentColor;
    Color borderColor = colors.accentColor;
    Color textColor = Colors.white;

    if (transparent == true) {
      backgroundColor = colors.backgroundColor;
      borderColor = colors.accentColor;
      textColor = colors.accentColor;
    } else {
      backgroundColor = colors.accentColor;
      borderColor = colors.accentColor;
      textColor = Colors.white;
    }

    if (facebook == true) {
      backgroundColor = colors.facebookColor;
      borderColor = colors.facebookColor;
      textColor = Colors.white;
    }

    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: RaisedButton(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 45.0),
          shape: RoundedRectangleBorder(
              side: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(20)),
          onPressed: () => action,
          elevation: _elevation,
          color: backgroundColor,
          child: TextWidget(
              text: label!.toUpperCase() ?? "Label",
              small: true,
              color: textColor)),
    );
  }
}
