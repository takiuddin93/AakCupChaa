import 'package:flutter/material.dart';
import 'package:aakcupchaa/universal_variables.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
            text: "Settings",
            style: TextStyle(
                color: UniversalVariables.primaryCrimson,
                fontSize: 18.0,
                fontFamily: 'FuturaPTBold'),
          ),
        ]),
      ),
    );
  }
}
