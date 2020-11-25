import 'dart:math';

import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final int childCount;

  final icons = {
    "Free breakfast": Icons.free_breakfast,
    "Food Bank": Icons.food_bank,
    "Gesture": Icons.gesture,
    "Alarm": Icons.access_alarm,
    "Car rental": Icons.car_rental,
    "Beach": Icons.beach_access,
    "Mail": Icons.mail,
    "Call": Icons.call,
    "Edit": Icons.edit
  };

  CategoryWidget({@required this.childCount});

  Widget _icon(BuildContext context) {
    var keys = icons.keys.toList()..shuffle();
    final key = keys[0];
    final icon = icons[key];

    return Chip(avatar: Icon(icon), label: Text(key));
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Wrap(
        spacing: 8,
        children: List(childCount)
            .map(
              (e) => _icon(context),
            )
            .toList(),
      ),
    );
  }
}
