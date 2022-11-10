import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  String imgUrl;
  String title;
  String subtitle;
  String price;
  String? discount;
  bool isFavourite = false;
  ItemDetail({
    required this.imgUrl,
    required this.title,
    required this.subtitle,
    required this.price,
    this.isFavourite = false,
    this.discount,
  });

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: (){},
          icon: Container(
            height: 34,
            width: 34,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(Icons.arrow_back_ios_new),),
        ),
        actions: [
          Container(
            height: 34,
            width: 34,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(Icons.shopping_bag),),
        ],
      ),
    );
  }
}
