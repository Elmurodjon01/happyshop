import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ItemReusable extends StatelessWidget {
  String? discount;
  late String label;
  late String style;
  late String price;
  late String image;
  double? width = 122;
  double? height = 100;
  ItemReusable({
    super.key,
    this.discount,
    required this.label,
    required this.price,
    required this.style,
    required this.image,
    this.height = 100,
    this.width = 122,
  });

  @override
  Widget build(BuildContext context) {
    return   Container(
          width: 122,
          //TODO this may cause a overflow problem
          margin: const EdgeInsets.only(right: 10, left: 5),
          decoration: BoxDecoration(

              color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
          child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  height: height,
                  width: width,
                  child: Image.network(

                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 125,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        label,
                        style: const TextStyle(fontSize: 14, overflow: TextOverflow.clip),
                      ),
                     const Icon(Icons.favorite_border, color: kbottomNavColor,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    style,
                    style: const TextStyle(fontSize: 12, color: Color(0xFFA4A4A4)),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    price,
                    style: const TextStyle(color: Color(0xFF6C28FE), fontSize: 14),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Text(
                    discount ?? '',
                    style: const TextStyle(
                      color: Color(0xFF777777),
                      fontSize: 10,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ],
            ),



    );
  }
}
