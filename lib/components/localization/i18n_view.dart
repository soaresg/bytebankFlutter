// ignore_for_file: use_key_in_widget_constructors, unused_field, prefer_const_constructors, prefer_generic_function_type_aliases, prefer_const_constructors_in_immutables, prefer_initializing_formals, must_be_immutable, file_names

import 'package:bytebank/components/error.dart';
import 'package:bytebank/components/localization/i18n_cubit.dart';
import 'package:bytebank/components/localization/i18n_messages.dart';
import 'package:bytebank/components/localization/i18n_states.dart';
import 'package:bytebank/components/progress/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


typedef Widget I18NWidgetCreator(I18NMessages messages);


class I18NLoadingView extends StatelessWidget {
  final I18NWidgetCreator _creator;

  I18NLoadingView(this._creator);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<I18NMessagesCubit, I18NMessagesState>(builder: (
      context,
      state,
    ) {
      if (state is InitI18NMessagesState || state is LoadingI18NMessagesState) {
        return ProgressView(message: "Loading...");
      }
      if (state is LoadedI18NMessagesState) {
        final messages = state.messages;
        return _creator.call(messages);
      }

      return ErrorView("Erro buscando mensagens da tela");
    });
  }
}