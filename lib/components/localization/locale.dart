// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_initializing_formals

import 'package:bytebank/components/container.dart';
import 'package:bytebank/components/localization/i18n_cubit.dart';
import 'package:bytebank/components/localization/i18n_view.dart';
import 'package:bytebank/http/webclients/i18n/webclient.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class I18NLoadingContainer extends BlocContainer {
  late String viewKey;
  late I18NWidgetCreator creator;

  I18NLoadingContainer({required String viewKey, required I18NWidgetCreator creator}) {
    this.creator = creator;
    this.viewKey = viewKey;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<I18NMessagesCubit>(
      create: (BuildContext context) {
        final cubit = I18NMessagesCubit(viewKey);
        cubit.reload(I18NWebClient(viewKey));

        return cubit;
      },
      child: I18NLoadingView(creator),
    );
  }
}

class CurrentLocaleCubit extends Cubit<String> {
  CurrentLocaleCubit() : super("pt_br");
}