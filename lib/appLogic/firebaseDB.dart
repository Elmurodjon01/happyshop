import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class ProductModel {
  String imageUrl1;
  String? imageUrl2;
  String? imageUrl3;
  String? rating;
  String label;
  String price;
  String? discount;
  String? itemDetail;
  String? style;
  String? size;
  int? quantity;
  ProductModel({
    this.size,
    this.quantity,
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
