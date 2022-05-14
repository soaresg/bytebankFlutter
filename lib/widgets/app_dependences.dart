// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:bytebank/database/dao/contact_dao.dart';
import 'package:bytebank/http/webclients/transactions/webclient.dart';
import 'package:flutter/material.dart';

class AppDependencies extends InheritedWidget {
  final ContactDao contactDao;
  final TransactionWebClient transactionWebClient;

  AppDependencies({
    required this.contactDao,
    required this.transactionWebClient,
    required Widget child,
  }) : super(child: child);

  static AppDependencies? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<AppDependencies>();

  @override
  bool updateShouldNotify(AppDependencies oldWidget) {
    return contactDao != oldWidget.contactDao ||
        transactionWebClient != oldWidget.transactionWebClient;
  }
}
