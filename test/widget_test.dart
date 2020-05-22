// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:aakcupchaa/universal_variables.dart';
import 'package:flutter/material.dart';
import 'package:aakcupchaa/menu.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Find Menu Buttons', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(Menu());

    // Verify that our counter starts at 0.
    expect(find.text('Explore creators'), findsOneWidget);
    expect(find.text(''), findsNothing);

    // Tap 'Menu' and trigger a frame.
    await tester.tap(find.byWidget(RichText(
        text: TextSpan(children: <TextSpan>[
      TextSpan(
        text: "Explore creators",
        style: TextStyle(
            color: UniversalVariables.primaryAlabaster,
            fontSize: 18.0,
            fontFamily: 'FuturaPTHeavy'),
      ),
    ]))));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.byWidget(Menu()), findsOneWidget);
    expect(find.byWidget(null), findsNothing);
  });
}
