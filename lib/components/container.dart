// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

abstract class BlocContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void push(BuildContext context, BlocContainer container) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => container,
      ),
    );
  }
}
