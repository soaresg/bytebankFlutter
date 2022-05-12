// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, type_init_formals

import 'package:bytebank/components/localization/i18n_container.dart';

import 'package:bytebank/components/theme.dart';
import 'package:bytebank/screens/dashboard/dashboard_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: byteBankTheme,
      home: LocalizationContainer(
        child: DashboardContainer(),
      ),
    );
  }
}

