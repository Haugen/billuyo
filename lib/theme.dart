import 'package:flutter/material.dart';

import 'package:billuyo/utils/ui.dart' as ui;

class BilluyoColors {
  static final Color seaweed = ui.cssStringToColor('#20D888');
  static final Color darkishBlue = ui.cssStringToColor('#053c89');
  static final Color darkSkyBlue = ui.cssStringToColor('#4fbfe5');
  static final Color aquamarine = ui.cssStringToColor('#02e3bc');
  static final Color greyishBrown = ui.cssStringToColor('#525252');
  static final Color greyish = ui.cssStringToColor('#b1b1b1');
  static final Color lightGrey = ui.cssStringToColor('#dbdbdb');
  static final Color almostWhite = ui.cssStringToColor('#f6f6f6');
  static final Color warmGrey = ui.cssStringToColor('#808080');
  static final Color warmPink = ui.cssStringToColor('#ff6288');
}

class BilluyoTextStyles {
  static TextStyle header([Color color]) => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: color ?? BilluyoColors.darkishBlue,
      );

  static TextStyle smallText([Color color]) => TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.bold,
        color: color ?? BilluyoColors.darkishBlue,
      );

  static final largeHeader = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w300,
    color: Colors.white,
  );

  static final actionText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
