import 'package:flutter/material.dart';

class SMProvider extends ChangeNotifier {
  int _i = 0;
  late bool _isNight = false;
  bool get isNight => _isNight;
  int get initialIndex => _i;

  void newIndex({required newI}) {
    _i = newI;
    notifyListeners();
  }

  void adIndex(page) {
    int activePage = 0;
    activePage = page;
    notifyListeners();
  }
}
