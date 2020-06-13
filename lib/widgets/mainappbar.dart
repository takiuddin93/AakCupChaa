import 'package:aakcupchaa/dashboard.dart';
import 'package:aakcupchaa/utils/universal_variables.dart';
import 'package:aakcupchaa/utils/mainappbar_style.dart';
import 'package:aakcupchaa/widgets/custom_notification_dialog_widget.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  final String title, back;

  const MainAppBar({Key key, this.title, this.back}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: appBarHeight(context),
        color: UniversalVariables.primaryCrimson,
        child: Padding(
          padding: EdgeInsets.all(0.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: _buildleading(context),
                ),
              ),
              Expanded(
                flex: 6,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: _buildLabel(context),
                ),
              ),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: _buildaction(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Builder _buildleading(BuildContext context) {
    IconData _iconData;
    switch (back.toString()) {
      case "menu":
        {
          _iconData = null;
        }
        break;
      case "search":
        {
          _iconData = Icons.arrow_back;
        }
        break;
      default:
        {
          Navigator.pop(context);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => DashBoard()));
        }
        break;
    }
    return Builder(
      builder: (context) => IconButton(
        color: UniversalVariables.primaryAlabaster,
        icon: new Icon(
          _iconData,
          color: UniversalVariables.primaryAlabaster,
        ),
        onPressed: () {
          Navigator.pop(context);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => DashBoard()));
        },
      ),
    );
  }

  Align _buildLabel(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          style: new TextStyle(
            fontFamily: 'FuturaPTBool',
            fontSize: 16.0,
            color: UniversalVariables.primaryAlabaster,
          ),
          children: [
            TextSpan(
              text: title,
            ),
          ],
        ),
      ),
    );
  }

  Builder _buildaction(BuildContext context) {
    String _alertdialogTitle, _alertdialogText, _alertdialogFirstButton;
    if (title == 'Recent Feeds') {
      _alertdialogTitle = 'Work in Progress';
      _alertdialogText = 'This feature has not been implemented yet!';
      _alertdialogFirstButton = 'Ok';
    } else {}
    return Builder(
      builder: (context) => IconButton(
        color: UniversalVariables.primaryAlabaster,
        icon: new Icon(Icons.notifications),
        onPressed: () {
          CustomDialog.showScaleAlertBox(
            context: context,
            title: _alertdialogTitle,
            icon: Icons.info_outline, // IF YOU WANT TO ADD ICON
            text: _alertdialogText, // IF YOU WANT TO ADD
            firstButton: _alertdialogFirstButton,
          );
        },
      ),
    );
  }
}
