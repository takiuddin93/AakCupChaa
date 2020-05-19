import 'package:flutter/material.dart';
import 'package:aakcupchaa/universal_variables.dart';

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
            text: "Stats",
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
