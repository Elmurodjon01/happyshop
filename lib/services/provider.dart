import 'package:flutter/material.dart';

class SMProvider extends ChangeNotifier {
  int _i = 0;
  int get initialIndex => _i;


  void newIndex(int newI) {
    _i = newI;
    notifyListeners();
  }

  void adIndex(page) {
    int activePage = 0;
    activePage = page;
    notifyListeners();
  }


}



// onChanged: (String? value) {
//   // This is called when the user selects an item.
//   // setState(() {
//     dropDownValue = value!;
//   // });
// },