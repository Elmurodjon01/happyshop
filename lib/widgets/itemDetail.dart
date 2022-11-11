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
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: const Color(0xFFBDBDBD),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(Icons.arrow_back_ios_new, ),),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: const Color(0xFFBDBDBD),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(Icons.shopping_bag,),),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: height * 0.7,
              child: Image.network('https://images.unsplash.com/photo-1526470498-9ae73c665de8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1396&q=80',
              fit: BoxFit.cover,),
            ),
          ],
        ),
      ),
    );
  }
}
