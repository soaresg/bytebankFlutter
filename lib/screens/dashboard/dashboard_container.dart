// ignore_for_file: use_key_in_widget_constructors

import 'package:bytebank/components/localization/locale.dart';
import 'package:bytebank/models/name.dart';
import 'package:bytebank/screens/dashboard/dashboard_i18n.dart';
import 'package:bytebank/screens/dashboard/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NameCubit("Fulano"),
      child: I18NLoadingContainer(
        viewKey: "dashboard",
        creator: (messages) => DashboardView(DashboardViewLazyI18N(messages)),
      ),
    );
  }
}
