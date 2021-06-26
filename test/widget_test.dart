// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/main.dart';

void main() {
  testWidgets('Test text, tap, color', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: MyApp()));
    var startColor = Color.fromRGBO(255, 255, 255, 1.0);

    expect(find.text('Hey there'),
        findsOneWidget); // testing the presence of text('Hey there') in the widget

    expect(
        ((tester.firstWidget(find.byType(Container)) as Container)).color ==
            startColor,
        true); // testing start color in the widget

    await tester
        .tap(find.byType(GestureDetector)); // testing the click on the widget
    await tester.pump(new Duration(milliseconds: 1000));

    expect(
        ((tester.firstWidget(find.byType(Container)) as Container)).color ==
            startColor,
        false); // testing the color change after clicking
  });
}
