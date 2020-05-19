import 'package:flutter/material.dart';
import 'package:aakcupchaa/universal_variables.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aakcupchaa/menu.dart';
import 'package:aakcupchaa/stats.dart';
import 'package:aakcupchaa/settings.dart';

enum MenuMarker { menu, stats, settings }

class DashBoard extends StatefulWidget {
  DashBoard({Key key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard>
    with SingleTickerProviderStateMixin<DashBoard> {
  MenuMarker selectedMenuMarker = MenuMarker.menu;
  AnimationController _controller;
  Animation _animation;
  @override
  void initState() {
    super.initState();
    // onMenuPressed(item: 0);
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    double width = media.width;
    double height = media.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: width * 1.0,
            color: UniversalVariables.primaryAlabaster,
            child: Padding(
              padding: EdgeInsets.only(
                left: width * 0.16,
                top: 0.0,
                right: 0.0,
                bottom: 0.0,
              ),
              child: FutureBuilder(
                future: _playAnimation(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  return getCustomContainer();
                },
              ),
            ),
          ),
          Container(
            width: width * 0.16,
            decoration: BoxDecoration(
                color: UniversalVariables.primaryAlabaster,
                boxShadow: [
                  BoxShadow(
                      color: UniversalVariables.primaryEbonyShadow,
                      offset: new Offset(1.0, 0.0),
                      blurRadius: 4.0),
                ]),
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 2,
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
                                      color: UniversalVariables
                                          .primaryCrimsonShadow,
                                      offset: new Offset(0.0, 1.0),
                                      blurRadius: 8.0)
                                ]),
                            child:
                                SvgPicture.asset('assets/svgs/AakCupChaa.svg'),
                          ),
                        ),
                        // SvgPicture.asset('assets/svgs/AakCupChaa.svg'),
                        RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: 'Taki',
                              style: TextStyle(
                                  color: UniversalVariables.primaryCrimson,
                                  fontSize: 18.0,
                                  fontFamily: 'FuturaPTBook'),
                            ),
                          ]),
                        ),
                        SvgPicture.asset(
                          'assets/svgs/Share.svg',
                          width: width * 0.04,
                        ),
                      ],
                    )),
                Expanded(
                  flex: 5,
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
                                  color:
                                      (selectedMenuMarker == MenuMarker.stats)
                                          ? UniversalVariables.primaryCrimson
                                          : UniversalVariables.primaryRiverBed),
                            ),
                          )),
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
                              child: SvgPicture.asset(
                                  'assets/svgs/Settings.svg',
                                  width: width * 0.08,
                                  color: (selectedMenuMarker ==
                                          MenuMarker.settings)
                                      ? UniversalVariables.primaryCrimson
                                      : UniversalVariables.primaryRiverBed),
                            ),
                          )),
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

  _playAnimation() {
    _controller.reset();
    _controller.forward();
  }

  Widget getCustomContainer() {
    switch (selectedMenuMarker) {
      case MenuMarker.menu:
        return Menu();
      case MenuMarker.stats:
        return Stats();
      case MenuMarker.settings:
        return Settings();
    }
    return getGraphContainer();
  }

  Widget getGraphContainer() {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        color: Colors.red,
        height: 200,
      ),
    );
  }

  Widget getStatsContainer() {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        color: Colors.green,
        height: 300,
      ),
    );
  }

  Widget getInfoContainer() {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        color: Colors.blue,
        height: 400,
      ),
    );
  }
}
