import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class ProductDetail {
  String imageUrl1;
  String? imageUrl2;
  String? imageUrl3;
  String? rating;
  String label;
  String price;
  String? discount;
  String? itemDetail;
  String? style;
  ProductDetail({
    required this.imageUrl1,
    required this.label,
    required this.price,
    this.imageUrl2,
    this.imageUrl3,
    this.rating,
    this.discount,
    this.itemDetail,
    this.style,
  });
}


class MyDataProvider extends ChangeNotifier {
  List<ProductDetail> _productDetail = [];

  List<ProductDetail> get pDetail => _productDetail;

  Future<void> fetchData() async {
   StreamBuilder<QuerySnapshot> loadData =  FirebaseFirestore.instance.collection('promotions').snapshots() as StreamBuilder<QuerySnapshot<Object?>>;
    final QuerySnapshot snapshot = (loadData) as QuerySnapshot<Object?>;

    _productDetail = loadData.docs.map((doc) => ProductDetail(imageUrl1: doc['imageUrl1'], label: doc['label'], price: doc['price'])).toList();

    notifyListeners();
  }
  Future<CircularProgressIndicator> fetchPdata () async{
    StreamBuilder<QuerySnapshot> loadData = (await FirebaseFirestore.instance.collection('promotions').snapshots()) as StreamBuilder<QuerySnapshot<Object?>>;
    if (loadData == null ){
      return CircularProgressIndicator();
    } else {
      loadData.docs
    }
  }
}
