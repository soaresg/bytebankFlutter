// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:bytebank/components/container.dart';
import 'package:bytebank/components/localization/locale.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocalizationContainer extends BlocContainer {
  final Widget child;

  LocalizationContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CurrentLocaleCubit(),
      child: child,
    );
  }
}
