import 'package:aakcupchaa/screens/dashboard.dart';
import 'package:aakcupchaa/utils/universal_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({Key key}) : super(key: key);

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    double width = media.width;
    double height = media.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: height * 0.12,
            left: width * 0.10,
            right: width * 0.10,
            child: SvgPicture.asset('assets/svgs/AakCupChaa.svg'),
          ),
          Positioned(
            top: height * 0.24,
            left: width * 0.10,
            right: width * 0.10,
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
            top: height * 0.32,
            left: width * 0.24,
            right: width * 0.24,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Share',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    'Engage',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    'Repeat',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: height * 0.48,
            left: width * 0.08,
            right: width * 0.08,
            child: Container(
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
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: TextButton(
                  onPressed: () {
                    print('Sign Up Clicked');
                  },
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign Up',
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
            ),
          ),
          Positioned(
            top: height * 0.58,
            left: width * 0.08,
            right: width * 0.08,
            child: Container(
              width: width,
              padding: EdgeInsets.only(
                left: width * 0.16,
                top: height * 0.08,
                right: width * 0.16,
                bottom: 0.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: UniversalVariables.primaryAlabaster,
                  border: Border.all(
                    color: UniversalVariables.primaryCrimson,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashBoard(),
                        ),
                        (Route<dynamic> route) => false);
                  },
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            color: UniversalVariables.primaryCrimson,
                            fontSize: 18.0,
                            fontFamily: 'FuturaPTHeavy',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
