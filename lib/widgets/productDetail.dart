
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:happyshop/widgets/itemReusable.dart';

class ProductDetail extends StatelessWidget {
  String imageurl;
  String label;
  String imageUrl1;
  String imageUrl2;
  String rating;
  String price;
  String? discount;
  String detail;
   ProductDetail({Key? key,
     required this.label,
   required this.imageurl,
   required this.imageUrl1,
   required this.imageUrl2,
   required this.rating,
   required this.price,
   required this.detail,
   this.discount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: ()=> Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(label),
            subtitle: Text(price),

          ),
        ],
      ),
    );
  }
}
