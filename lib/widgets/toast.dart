import 'package:fluttertoast/fluttertoast.dart';
import 'package:theme/theme/colors.dart' as colors;
import 'package:theme/theme/dimens.dart' as dimens;

class ToastWidget {
  static void show(String msg) => Fluttertoast.showToast(
    msg: msg ?? "Toast message",
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: colors.toastBackgroundColor,
    textColor: colors.toastTextColor,
    fontSize: dimens.fontText
  );

  static void cancelAll() => Fluttertoast.cancel();
}