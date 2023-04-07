import 'package:flutter/material.dart';
import 'package:happyshop/appLogic/firebaseDB.dart';
import 'package:happyshop/model/itemDetailModel.dart';

class SMProvider extends ChangeNotifier {
  int _i = 0;
  int get initialIndex => _i;
  List<ProductModel> _wishList = [];
  List<BagModel> _bagItem = [];
  List<BagModel> get bagItem => _bagItem;
  List<ProductModel> get wishList => _wishList;

  void newIndex(int newI) {
    _i = newI;
    notifyListeners();
  }

  void adIndex(page) {
    int activePage = 0;
    activePage = page;
    notifyListeners();
  }

  void addTowishList(ProductModel pd) {
    _wishList.add(pd);
    notifyListeners();
  }

  void removeFromWishlist(int index) {
    _wishList.removeAt(index);
    notifyListeners();
  }

  void addToBag(BagModel item) {
    _bagItem.add(item);
    notifyListeners();
  }

  void removeFromBag(int index) {
    _bagItem.removeAt(index);
    notifyListeners();
  }
}



// onChanged: (String? value) {
//   // This is called when the user selects an item.
//   // setState(() {
//     dropDownValue = value!;
//   // });
// },