import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:aakcupchaa/utils/universal_variables.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomStatistics extends StatelessWidget {
  final String title;
  final String subtitle;
  final String author;

  CustomStatistics({
    required this.title,
    required this.subtitle,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    double width = media.width;
    double height = media.height;
    print("Width: " + width.toString() + " " + "Height: " + height.toString());
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: height * 0.01,
        horizontal: width * 0.04,
      ),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: width * 0.04,
              top: height * 0.06,
              right: width * 0.04,
              bottom: height * 0.0,
            ),
            height: height * 0.20,
            margin: EdgeInsets.only(top: height * 0.07),
            decoration: BoxDecoration(
              color: UniversalVariables.primaryAlabaster,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(4.0),
              boxShadow: [
                BoxShadow(
                  color: UniversalVariables.primaryCrimsonShadow,
                  offset: Offset(0.0, 1.0),
                  blurRadius: 4.0,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: title,
                        style: TextStyle(
                          color: UniversalVariables.primaryRiverBed,
                          fontSize: 16.0,
                          fontFamily: 'FuturaPTBook',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: UniversalVariables.primaryAlabaster,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: subtitle,
                          style: TextStyle(
                            color: UniversalVariables.primaryRiverBed,
                            fontSize: 14.0,
                            fontFamily: 'FuturaPTBook',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.23),
            padding: EdgeInsets.symmetric(horizontal: width * 0.02),
            child: Row(
              children: [
                Expanded(
                  flex: 13,
                  child: Container(),
                ),
                Expanded(
                  flex: 5,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerRight,
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: '0.5k',
                                  style: TextStyle(
                                    color: UniversalVariables.primaryGhost,
                                    fontSize: 14.0,
                                    fontFamily: 'FuturaPTBook',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: SvgPicture.asset(
                            'assets/svgs/Heart.svg',
                            width: width * 0.08,
                            color: UniversalVariables.primaryGhost,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: SvgPicture.asset(
                      'assets/svgs/Share.svg',
                      width: width * 0.08,
                      color: UniversalVariables.primaryGhost,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: UniversalVariables.primaryCrimsonShadow,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 4.0,
                      )
                    ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: Image.asset(
                        'assets/images/postsThumbnails.jpg',
                        width: 192.0,
                        height: 96.0,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 4,
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: author,
                          style: TextStyle(
                            color: UniversalVariables.primaryGhost,
                            fontSize: 14.0,
                            fontFamily: 'FuturaPTBook',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
