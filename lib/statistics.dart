import 'package:flutter/material.dart';
import 'package:aakcupchaa/universal_variables.dart';

class Statistics extends StatefulWidget {
  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    double width = media.width;
    double height = media.height;
    return Center(
      child: Stack(
        children: <Widget>[
          // Top Bar
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
          // Statistics Text
          Positioned(
            top: height * 0.16,
            child: Container(
              height: height * 0.06,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16.0,
                  top: height * 0.02,
                  right: 16.0,
                  bottom: height * 0.02,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "Statistics",
                        style: TextStyle(
                            color: UniversalVariables.primaryEbony,
                            fontSize: 16.0,
                            fontFamily: 'FuturaPTBool'),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          ),
          // Day Cards
          Positioned(
            child: Container(
              height: height * 0.16,
              margin: EdgeInsets.only(
                top: height * 0.22,
              ),
              child: StatsPosts(),
            ),
          ),
          // Recent Statistics Text
          Positioned(
            child: Container(
              height: height * 0.16,
              margin: EdgeInsets.only(
                top: height * 0.32,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16.0,
                  top: height * 0.02,
                  right: 16.0,
                  bottom: 0.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "Recent Statistics",
                        style: TextStyle(
                            color: UniversalVariables.primaryEbony,
                            fontSize: 16.0,
                            fontFamily: 'FuturaPTBool'),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          ),
          //Bottom Container
          Positioned(
            child: Container(
                height: height * 1.0,
                margin: EdgeInsets.only(
                  top: height * 0.44,
                ),
                child: Row(children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: width * 0.33,
                      color: UniversalVariables.primaryAlabaster,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: width * 0.33,
                      color: UniversalVariables.primaryEbony,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: width * 0.33,
                      color: UniversalVariables.primaryCrimson,
                    ),
                  )
                ])),
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
      height: height * 0.16,
      child: Row(children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            width: width * 0.33,
            color: UniversalVariables.primaryCrimson,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: width * 0.33,
            color: UniversalVariables.primaryAlabaster,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: width * 0.33,
            color: UniversalVariables.primaryEbony,
          ),
        )
      ]),
    );
  }
}
