import 'package:aakcupchaa/widgets/mainappbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aakcupchaa/utils/universal_variables.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Statistics extends StatefulWidget {
  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  bool _lights = false;
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
            top: height * 0,
            child: Container(
              width: width,
              height: height * 0.10,
              padding: EdgeInsets.symmetric(
                vertical: height * 0.0,
                horizontal: 0.0,
              ),
              decoration: BoxDecoration(
                color: UniversalVariables.primaryCrimson,
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: UniversalVariables.primaryEbony,
                    offset: Offset(0.0, 1.0),
                    blurRadius: 4.0,
                  )
                ],
              ),
              child: PreferredSize(
                child: MainAppBar(
                  back: "statistics",
                  title: "Statistics",
                ),
                preferredSize: Size.fromHeight(media.height),
              ),
            ),
          ),
          // Statistics
          Positioned(
            top: height * 0.1,
            child: Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                            left: width * 0.032,
                            top: height * 0.02,
                            right: width * 0.032,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.02,
                          ),
                          height: height * 0.1,
                          width: (width - (width * 0.30)) / 2,
                          decoration: BoxDecoration(
                            color: UniversalVariables.primaryAlabaster,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: UniversalVariables.primaryGhostShadow,
                                blurRadius: 4.0, // soften the shadow
                                spreadRadius: 2.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 10  horizontally
                                  2.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Today",
                                      style: TextStyle(
                                        color: UniversalVariables.primaryEbony,
                                        fontSize: 14.0,
                                        fontFamily: 'FuturaPTMedium',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Earnings",
                                          style: TextStyle(
                                            color:
                                                UniversalVariables.primaryEbony,
                                            fontSize: 12.0,
                                            fontFamily: 'FuturaPTMedium',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Views",
                                          style: TextStyle(
                                            color:
                                                UniversalVariables.primaryEbony,
                                            fontSize: 12.0,
                                            fontFamily: 'FuturaPTMedium',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: width * 0.032,
                            top: height * 0.02,
                            right: width * 0.032,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.02,
                          ),
                          height: height * 0.1,
                          width: (width - (width * 0.30)) / 2,
                          decoration: BoxDecoration(
                            color: UniversalVariables.primaryAlabaster,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: UniversalVariables.primaryGhostShadow,
                                blurRadius: 4.0, // soften the shadow
                                spreadRadius: 2.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 10  horizontally
                                  2.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Last 7 Days",
                                      style: TextStyle(
                                        color: UniversalVariables.primaryEbony,
                                        fontSize: 12.0,
                                        fontFamily: 'FuturaPTMedium',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Earnings",
                                          style: TextStyle(
                                            color:
                                                UniversalVariables.primaryEbony,
                                            fontSize: 12.0,
                                            fontFamily: 'FuturaPTMedium',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Views",
                                          style: TextStyle(
                                            color:
                                                UniversalVariables.primaryEbony,
                                            fontSize: 12.0,
                                            fontFamily: 'FuturaPTMedium',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.232,
            child: Center(
              child: Container(
                margin: EdgeInsets.only(
                  left: width * 0.032,
                  right: width * 0.032,
                ),
                height: height * 0.032,
                width: width * 0.776,
                decoration: BoxDecoration(
                  color: UniversalVariables.primaryAlabaster,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: "Recent Stats",
                            style: TextStyle(
                              color: UniversalVariables.primaryEbony,
                              fontSize: 16.0,
                              fontFamily: 'FuturaPTMedium',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.28,
            child: Center(
              child: Container(
                margin: EdgeInsets.only(
                  left: width * 0.032,
                  right: width * 0.032,
                ),
                height: height * 0.032,
                width: width * 0.776,
                decoration: BoxDecoration(
                  color: UniversalVariables.primaryCrimson,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: "Recent Stats",
                            style: TextStyle(
                              color: UniversalVariables.primaryEbony,
                              fontSize: 16.0,
                              fontFamily: 'FuturaPTMedium',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
      height: height * 0.16,
      child: Row(
        children: <Widget>[
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
        ],
      ),
    );
  }
}
