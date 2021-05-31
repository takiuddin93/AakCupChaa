import 'package:aakcupchaa/widgets/mainappbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aakcupchaa/utils/universal_variables.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
                  back: "settings",
                  title: "Settings",
                ),
                preferredSize: Size.fromHeight(media.height),
              ),
            ),
          ),
          // Settings
          Positioned(
            child: Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: height * 0.1,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
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
                          width: width * 0.776,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Notifications",
                                          style: TextStyle(
                                            color:
                                                UniversalVariables.primaryEbony,
                                            fontSize: 16.0,
                                            fontFamily: 'FuturaPTMedium',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  CupertinoSwitch(
                                    value: _lights,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _lights = value;
                                        print(_lights);
                                      });
                                    },
                                    activeColor:
                                        UniversalVariables.primaryCrimson,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
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
                          width: width * 0.776,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Help Center",
                                          style: TextStyle(
                                            color:
                                                UniversalVariables.primaryEbony,
                                            fontSize: 16.0,
                                            fontFamily: 'FuturaPTMedium',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    'assets/svgs/Arrow.svg',
                                    color: UniversalVariables.primaryRiverBed,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
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
                          width: width * 0.776,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Chat with us",
                                          style: TextStyle(
                                            color:
                                                UniversalVariables.primaryEbony,
                                            fontSize: 16.0,
                                            fontFamily: 'FuturaPTMedium',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    'assets/svgs/Arrow.svg',
                                    color: UniversalVariables.primaryRiverBed,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
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
                          width: width * 0.776,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Logout",
                                          style: TextStyle(
                                            color:
                                                UniversalVariables.primaryEbony,
                                            fontSize: 16.0,
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
        ],
      ),
    );
  }
}
