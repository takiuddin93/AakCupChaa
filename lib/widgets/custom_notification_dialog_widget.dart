import 'package:aakcupchaa/utils/universal_variables.dart';
import 'package:flutter/material.dart';

class CustomDialog {
  static Future showScaleAlertBox({
    required BuildContext context,
    required String title,
    IconData? icon,
    required String text,
    required String firstButton,
  }) {
    return showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.7),
        transitionBuilder: (context, a1, a2, widget) {
          return Transform.scale(
            scale: a1.value,
            child: Opacity(
              opacity: a1.value,
              child: AlertDialog(
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                title: Center(child: Text(title)),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      icon,
                      color: UniversalVariables.primaryCrimson,
                    ),
                    Container(
                      height: 10,
                    ),
                    Container(
                      child: Text(text),
                    ),
                  ],
                ),
                actions: <Widget>[
                  MaterialButton(
                    // OPTIONAL BUTTON
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    color: Colors.white,
                    child: Text(firstButton),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 128),
        barrierDismissible: true,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {
          return SizedBox();
        });
  }
}
