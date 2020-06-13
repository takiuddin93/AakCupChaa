import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Color green = Color(0xFF6B8449);
Color darkgreen = Color(0xFF4C5B39);
Color black = Color(0xFF000000);
Color grey = Color(0xFF808184);
Color greyShadow = Color(0xFF33808184);
Color red = Color(0XFFFD3131);
Color white = Color(0xFFFFFFFF);

class CustomLoginSignUpTextField extends StatelessWidget {
  final String text;
  final TextEditingController fieldController;
  final bool validate, obscureText, fingerprint;
  final Size media;
  final BuildContext context;

  CustomLoginSignUpTextField(
      {Key key,
      this.text,
      this.fieldController,
      this.validate,
      this.obscureText,
      this.fingerprint,
      this.context,
      this.media})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _keyboartType;
    Widget _prefixiconData, _suffixiconData;
    if (obscureText == false && fingerprint == false) {
      _keyboartType = TextInputType.number;
      _prefixiconData = Icon(
        Icons.account_circle,
        color: green,
      );
      _suffixiconData = Icon(
        Icons.account_circle,
        color: Colors.transparent,
      );
    } else if (obscureText == true && fingerprint == true) {
      _keyboartType = TextInputType.text;
      _prefixiconData = Icon(
        Icons.lock,
        color: green,
      );
      _suffixiconData = Icon(
        Icons.fingerprint,
        color: green,
      );
    } else {
      _keyboartType = TextInputType.text;
      _prefixiconData = Icon(
        Icons.lock,
        color: green,
      );
      _suffixiconData = Icon(
        Icons.remove_red_eye,
        color: grey,
      );
    }
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFFF),
        borderRadius: BorderRadius.circular(4.0),
        boxShadow: [
          BoxShadow(
            color: greyShadow,
            blurRadius: 4.0,
            spreadRadius: 4.0,
            offset: Offset(0.0, 2.0),
          ),
        ],
      ),
      child: Center(
        child: Column(
          children: [
            TextFormField(
              autovalidate: validate,
              controller: fieldController,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: _prefixiconData,
                ),
                labelText: text,
                labelStyle: TextStyle(
                  color: green,
                ),
                hintText: text,
                suffixIcon: Builder(
                  builder: (BuildContext context) {
                    if (fingerprint == true) {
                      return Padding(
                        padding: EdgeInsets.all(0.0),
                        child: IconButton(
                          icon: _suffixiconData,
                          onPressed: () {
                            FocusScope.of(context).unfocus();
                            print("fingerprint");
                          },
                        ),
                      );
                    } else {
                      return Padding(
                        padding: EdgeInsets.all(0.0),
                        child: IconButton(
                          icon: _suffixiconData,
                          onPressed: () {
                            print("no fingerprint");
                          },
                        ),
                      );
                    }
                  },
                ),
                fillColor: Colors.transparent,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                  borderSide: BorderSide(color: green),
                ),
              ),
              obscureText: obscureText,
              keyboardType: _keyboartType,
              style: TextStyle(
                fontFamily: "Poppins",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
