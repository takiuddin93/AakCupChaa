import 'dart:async';
import 'package:aakcupchaa/screens/login_signup/login_signup.dart';
import 'package:flutter/material.dart';
import 'package:aakcupchaa/utils/universal_variables.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  _SplashScreenState() {
    _timer = new Timer(const Duration(milliseconds: 1500), () {
      setState(() {
        route();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: media.height * 0.24,
            left: media.width * 0.10,
            right: media.width * 0.10,
            child: SvgPicture.asset('assets/svgs/AakCupChaa.svg'),
          ),
          Positioned(
            top: media.height * 0.48,
            left: media.width * 0.10,
            right: media.width * 0.10,
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Aak',
                      style: TextStyle(
                        color: UniversalVariables.primaryCrimson,
                        fontSize: 48.0,
                        fontFamily: 'FuturaPTBook',
                      ),
                    ),
                    TextSpan(
                      text: 'Cup',
                      style: TextStyle(
                        color: UniversalVariables.primaryCrimson,
                        fontSize: 48.0,
                        fontFamily: 'FuturaPTHeavy',
                      ),
                    ),
                    TextSpan(
                      text: 'Chaa',
                      style: TextStyle(
                        color: UniversalVariables.primaryCrimson,
                        fontSize: 48.0,
                        fontFamily: 'FuturaPTBook',
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: media.height * 0.60,
            left: media.width * 0.24,
            right: media.width * 0.24,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    "Share",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    "Engage",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    "Repeat",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  route() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => LoginSignup(),
        ),
        (Route<dynamic> route) => false);
  }
}
