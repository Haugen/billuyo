import 'package:flutter/material.dart';

Color cssStringToColor(String hex, [int opacity = 255]) {
  final prefix = opacity.toRadixString(16);
  hex = hex.replaceFirst('#', '');
  hex = hex.length == 6 ? prefix + hex : hex;
  final val = int.parse(hex, radix: 16);
  final color = Color(val);
  return color;
}
