// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class FeatureItem extends StatelessWidget {
  final String? name;
  final IconData icon;
  final Function onClick;

  FeatureItem(this.name, this.icon, {required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).colorScheme.primary,
        child: InkWell(
          onTap: () => onClick(),
          child: Container(
            padding: EdgeInsets.all(8.0),
            height: 100,
            width: 150,
            color: Theme.of(context).colorScheme.primary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.white,
                  size: 24.0,
                ),
                Text(
                  name.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
