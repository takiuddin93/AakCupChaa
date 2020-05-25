import 'package:flutter/material.dart';
import 'package:aakcupchaa/universal_variables.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    double width = media.width;
    double height = media.height;
    return Center(
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              width: width,
              height: height * 0.16,
              padding: EdgeInsets.symmetric(
                vertical: height * 0.02,
                horizontal: 0.0,
              ),
              decoration: BoxDecoration(
                  color: UniversalVariables.primaryCrimson,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                    bottomRight: Radius.circular(4.0),
                    bottomLeft: Radius.circular(0.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: UniversalVariables.primaryEbony,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 4.0)
                  ]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              left: 8.0, top: 0.0, right: 8.0, bottom: 8.0),
                          child: RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: "0",
                                style: TextStyle(
                                    color: UniversalVariables.primaryAlabaster,
                                    fontSize: 20.0,
                                    fontFamily: 'FuturaPTBool'),
                              ),
                            ]),
                          ),
                        ),
                        RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: "Supporters",
                              style: TextStyle(
                                  color: UniversalVariables.primaryAlabaster,
                                  fontSize: 16.0,
                                  fontFamily: 'FuturaPTBool'),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              left: 8.0, top: 0.0, right: 8.0, bottom: 8.0),
                          child: RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: "৳ ",
                                  style: TextStyle(
                                      color:
                                          UniversalVariables.primaryAlabaster,
                                      fontSize: 16.0,
                                      fontFamily: 'FuturaPTBool'),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "0",
                                      style: TextStyle(
                                          color: UniversalVariables
                                              .primaryAlabaster,
                                          fontSize: 20.0,
                                          fontFamily: 'FuturaPTBool'),
                                    )
                                  ]),
                            ]),
                          ),
                        ),
                        RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: "Total",
                              style: TextStyle(
                                  color: UniversalVariables.primaryAlabaster,
                                  fontSize: 16.0,
                                  fontFamily: 'FuturaPTBool'),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            child: Container(
              margin: EdgeInsets.only(
                top: height * 0.16,
              ),
              child: StatsPosts(),
            ),
          ),
        ],
      ),
    );
  }
}

class StatsPosts extends StatefulWidget {
  @override
  StatsPostsState createState() => StatsPostsState();
}

class StatsPostsState extends State<StatsPosts> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    double width = media.width;
    double height = media.height;
    return Container(
      child: Column(children: [
        RichText(
          text: TextSpan(children: <TextSpan>[
            TextSpan(
              text: "Stats",
              style: TextStyle(
                  color: UniversalVariables.primaryEbony,
                  fontSize: 16.0,
                  fontFamily: 'FuturaPTBool'),
            ),
          ]),
        ),
      ]),
    );
  }
}
