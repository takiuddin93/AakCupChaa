import 'package:flutter/material.dart';
import 'package:aakcupchaa/widgets/mainappbar.dart';
import 'package:aakcupchaa/utils/universal_variables.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  _MySearchState createState() => _MySearchState();
}

class _MySearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    double width = media.width;
    double height = media.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: media.height * 0.0,
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
                      blurRadius: 4.0)
                ],
              ),
              child: PreferredSize(
                child: MainAppBar(back: "search", title: "Search"),
                preferredSize: Size.fromHeight(
                  media.height,
                ),
              ),
            ),
          ),
          Positioned(
            top: media.height * 0.45,
            left: media.width * 0.20,
            right: media.width * 0.20,
            child: SvgPicture.asset('assets/svgs/BarrenClipBoard.svg'),
          ),
        ],
      ),
    );
  }
}
