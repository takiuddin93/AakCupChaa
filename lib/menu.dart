import 'dart:convert';
import 'package:aakcupchaa/search.dart';
import 'package:aakcupchaa/widgets/custom_post_widget.dart';
import 'package:aakcupchaa/widgets/mainappbar.dart';
import 'package:flutter/material.dart';
import 'package:aakcupchaa/utils/universal_variables.dart';
import 'package:flutter_svg/flutter_svg.dart';

bool hasPosts;

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
                  back: "menu",
                  title: "Recent Feeds",
                ),
                preferredSize: Size.fromHeight(media.height),
              ),
            ),
          ),
          Positioned(
            child: Container(
              margin: EdgeInsets.only(
                top: height * 0.10,
              ),
              child: FeedPosts(),
            ),
          ),
        ],
      ),
    );
  }
}

class FeedPosts extends StatefulWidget {
  @override
  _FeedPostsState createState() => _FeedPostsState();
}

class _FeedPostsState extends State<FeedPosts> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    double width = media.width;
    double height = media.height;
    return Container(
      child: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var showData = json.decode(snapshot.data.toString());
            if (showData['noofposts'] != "0") {
              return ListView.builder(
                itemCount: showData.length,
                itemBuilder: (BuildContext context, int index) {
                  print("Data Count: " + index.toString());
                  return CustomPosts(
                    title: showData['posts'][index]['pTitle'],
                    subtitle: showData['posts'][index]['pContent'],
                    author: showData['posts'][index]['pAuthor'],
                  );
                },
              );
            } else {
              return Column(
                children: <Widget>[
                  Container(
                      width: width,
                      margin: EdgeInsets.only(top: height * 0.04),
                      child:
                          SvgPicture.asset('assets/svgs/BarrenClipBoard.svg')),
                  Container(
                    width: width,
                    child: Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: "Why so barren?",
                              style: TextStyle(
                                color: UniversalVariables.primaryCrimson,
                                fontSize: 18.0,
                                fontFamily: 'FuturaPTMedium',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: width,
                    padding: EdgeInsets.only(
                      left: width * 0.16,
                      top: height * 0.08,
                      right: width * 0.16,
                      bottom: 0.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: UniversalVariables.primaryCrimson,
                          borderRadius: BorderRadius.circular(2.0)),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => Search()),
                              (Route<dynamic> route) => false);
                          print("Explore creators");
                        },
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "Explore creators",
                                style: TextStyle(
                                  color: UniversalVariables.primaryAlabaster,
                                  fontSize: 18.0,
                                  fontFamily: 'FuturaPTHeavy',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              );
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
        future:
            DefaultAssetBundle.of(context).loadString("assets/json/posts.json"),
      ),
    );
  }
}
