import 'package:bytebank/components/localization/locale.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewI18N {
  String? _language;

  ViewI18N(BuildContext context) {
    _language = BlocProvider.of<CurrentLocaleCubit>(context).state;
  }

  String? localize(Map<String, String> values) {
    if (!values.containsKey(_language)) {
      return values["en"];
    }

    return values[_language];
  }
}