import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier {
  int _navbarIndex = 0;

  get navbarIndex => _navbarIndex;

  void changeNavbarIndex(int index) {
    _navbarIndex = index;
    notifyListeners();
  }
}
