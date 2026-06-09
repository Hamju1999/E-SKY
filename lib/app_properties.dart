import 'package:flutter/material.dart';

const LinearGradient mainButton = LinearGradient(colors: [
  Color(0xFF43ad53),
  Color(0xFF43ad53),
  Color(0xFF43ad53),
], begin: FractionalOffset.topCenter, end: FractionalOffset.bottomCenter);

const List<BoxShadow> shadow = [
  BoxShadow(color: Colors.black12, offset: Offset(0, 3), blurRadius: 6)
];

screenAwareSize(int size, BuildContext context) {
  double baseHeight = 640.0;
  return size * MediaQuery.of(context).size.height / baseHeight;
}