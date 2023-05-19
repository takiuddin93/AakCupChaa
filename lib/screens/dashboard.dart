import 'package:flutter/material.dart';
import 'package:aakcupchaa/utils/universal_variables.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:share_plus/share_plus.dart';
import 'package:aakcupchaa/screens/menu/menu.dart';
import 'package:aakcupchaa/screens/statistics/statistics.dart';
import 'package:aakcupchaa/settings.dart';

enum MenuMarker { menu, stats, settings }

class DashBoard extends StatefulWidget {
  DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard>
    with SingleTickerProviderStateMixin<DashBoard> {
  MenuMarker selectedMenuMarker = MenuMarker.menu;

  @override
  Widget build(BuildContext context) {
    String _alertdialogTitle, _alertdialogText, _alertdialogFirstButton;
    _alertdialogTitle = 'Work in Progress';
    _alertdialogText = 'This feature has not been implemented yet!';
    _alertdialogFirstButton = 'Ok';
    Size media = MediaQuery.of(context).size;
    double width = media.width;
    double height = media.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //Dashboard
          Container(
            width: width * 1.0,
            color: UniversalVariables.primaryAlabaster,
            child: Padding(
              padding: EdgeInsets.only(
                left: width * 0.12,
                top: 0.0,
                right: 0.0,
                bottom: 0.0,
              ),
              child: FutureBuilder(
                future: null,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  return getCustomMenu();
                },
              ),
            ),
          ),
          //Navigation
          Container(
            width: width * 0.12,
            decoration: BoxDecoration(
              color: UniversalVariables.primaryAlabaster,
              boxShadow: [
                BoxShadow(
                    color: UniversalVariables.primaryEbonyShadow,
                    offset: new Offset(1.0, 0.0),
                    blurRadius: 4.0),
              ],
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          left: 0.0,
                          top: height * 0.08,
                          right: 0.0,
                          bottom: 0.0,
                        ),
                        child: Container(
                          width: width * 0.10,
                          height: width * 0.10,
                          decoration: new BoxDecoration(
                            color: UniversalVariables.primaryAlabaster,
                            borderRadius: BorderRadius.circular(32.0),
                            boxShadow: [
                              new BoxShadow(
                                  color:
                                      UniversalVariables.primaryCrimsonShadow,
                                  offset: new Offset(0.0, 1.0),
                                  blurRadius: 8.0)
                            ],
                          ),
                          child: SvgPicture.asset('assets/svgs/AakCupChaa.svg'),
                        ),
                      ),
                      // SvgPicture.asset('assets/svgs/AakCupChaa.svg'),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Taki',
                              style: TextStyle(
                                  color: UniversalVariables.primaryCrimson,
                                  fontSize: 18.0,
                                  fontFamily: 'FuturaPTMedium'),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Share.share(
                                'https://www.buymeacoffee.com/takiuddin93');
                          });
                        },
                        child: Container(
                          width: width * 0.16,
                          child: SvgPicture.asset(
                            'assets/svgs/Link.svg',
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // setState(() {});
                          print('Notification Icon Clicked!');
                        },
                        child: Container(
                          width: width * 0.16,
                          child: Icon(
                            Icons.notifications,
                            size: 32.0,
                            color: UniversalVariables.primaryCrimson,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedMenuMarker = MenuMarker.menu;
                            });
                          },
                          child: Container(
                            width: width * 0.16,
                            child: SvgPicture.asset('assets/svgs/Menu.svg',
                                width: width * 0.08,
                                color: (selectedMenuMarker == MenuMarker.menu)
                                    ? UniversalVariables.primaryCrimson
                                    : UniversalVariables.primaryRiverBed),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedMenuMarker = MenuMarker.stats;
                            });
                          },
                          child: Container(
                            width: width * 0.16,
                            child: SvgPicture.asset('assets/svgs/Stats.svg',
                                width: width * 0.08,
                                color: (selectedMenuMarker == MenuMarker.stats)
                                    ? UniversalVariables.primaryCrimson
                                    : UniversalVariables.primaryRiverBed),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedMenuMarker = MenuMarker.settings;
                            });
                          },
                          child: Container(
                            width: width * 0.16,
                            child: SvgPicture.asset('assets/svgs/Settings.svg',
                                width: width * 0.08,
                                color:
                                    (selectedMenuMarker == MenuMarker.settings)
                                        ? UniversalVariables.primaryCrimson
                                        : UniversalVariables.primaryRiverBed),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getCustomMenu() {
    switch (selectedMenuMarker) {
      case MenuMarker.menu:
        return Menu();
      case MenuMarker.stats:
        return Statistics();
      case MenuMarker.settings:
        return Settings();
    }
    return Menu();
  }
}
