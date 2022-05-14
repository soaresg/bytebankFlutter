// ignore_for_file: prefer_const_constructors

import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../matchers/matchers.dart';

void main() {
  testWidgets('Should_display_main_image_on_dashboard_load',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home: Dashboard()));
    final mainImage = find.byType(Image);

    expect(mainImage, findsOneWidget);
  });

  testWidgets('Should_display_transfer_feature_on_dashboard_load',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home: Dashboard()));
    final transferFeatureItem = find.byWidgetPredicate((widget) =>
        featureItemMatcher(widget, "Transfer", Icons.monetization_on));

    expect(transferFeatureItem, findsOneWidget);
  });

  testWidgets('Should_display_transaction_feed_feature_on_dashboard_load',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home: Dashboard()));
    final transactionFeedFeatureItem = find.byWidgetPredicate((widget) =>
        featureItemMatcher(widget, "Transaction Feed", Icons.description));

    expect(transactionFeedFeatureItem, findsOneWidget);
  });
}
