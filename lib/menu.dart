import 'package:flutter/material.dart';
import 'package:aakcupchaa/universal_variables.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool hasPosts = true;
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    double width = media.width;
    double height = media.height;
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(
                left: 0.0,
                top: height * 0.04,
                right: 0.0,
                bottom: 0.0,
              ),
              child: RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: "Recent posts",
                    style: TextStyle(
                        color: UniversalVariables.primaryEbony,
                        fontSize: 18.0,
                        fontFamily: 'FuturaPTBook'),
                  ),
                ]),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Padding(
              padding: EdgeInsets.only(
                left: 0.0,
                top: height * 0.0,
                right: 0.0,
                bottom: 0.0,
              ),
              child: hasPosts
                  ? RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: "Yes Posts",
                          style: TextStyle(
                              color: UniversalVariables.primaryEbony,
                              fontSize: 18.0,
                              fontFamily: 'FuturaPTBook'),
                        ),
                      ]),
                    )
                  : Column(
                      children: <Widget>[
                        SvgPicture.asset('assets/svgs/BarrenClipBoard.svg'),
                        RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: "Why so barren?",
                              style: TextStyle(
                                  color: UniversalVariables.primaryCrimson,
                                  fontSize: 18.0,
                                  fontFamily: 'FuturaPTMedium'),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 0.0,
                            top: height * 0.08,
                            right: 0.0,
                            bottom: 0.0,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                color: UniversalVariables.primaryCrimson,
                                borderRadius: BorderRadius.circular(2.0)),
                            child: FlatButton(
                                onPressed: () {
                                  print("Explore creators");
                                },
                                child: RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                      text: "Explore creators",
                                      style: TextStyle(
                                          color: UniversalVariables
                                              .primaryAlabaster,
                                          fontSize: 18.0,
                                          fontFamily: 'FuturaPTHeavy'),
                                    ),
                                  ]),
                                )),
                          ),
                        )
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
