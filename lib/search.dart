import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/mainappbar.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Stack(children: <Widget>[
      Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            child: MainAppBar(back: "search", title: "Search"),
            preferredSize: Size.fromHeight(media.height),
          ),
          body: Container(
              height: media.height,
              width: media.width,
              child: Stack(children: <Widget>[
                Positioned(
                    top: media.height * 0.45,
                    left: media.width * 0.20,
                    right: media.width * 0.20,
                    child: SvgPicture.asset('assets/svgs/BarrenClipBoard.svg')),
              ])))
    ]);
  }
}
