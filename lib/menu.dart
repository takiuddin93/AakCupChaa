import 'package:flutter/material.dart';
import 'package:aakcupchaa/universal_variables.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
            text: "Menu",
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
