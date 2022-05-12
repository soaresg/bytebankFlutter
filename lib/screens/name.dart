// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:bytebank/components/container.dart';
import 'package:bytebank/models/name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameContainer extends BlocContainer {
  @override
  Widget build(BuildContext context) {
    return NameView();
  }
}

class NameView extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _nameController.text = context.read<NameCubit>().state;

    return Scaffold(
      appBar: AppBar(
        title: Text('Change Name'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: "Desired name",
            ),
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 16.0,
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                child: Text('Confirm'),
                onPressed: () {
                  final name = _nameController.text;
                  context.read<NameCubit>().change(name);
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
