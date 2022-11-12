import 'package:flutter/material.dart';

class PromotionItem extends StatelessWidget {
  String imageUrl;
  double? height = 80;
  double? width = 170;
  PromotionItem({
    required this.imageUrl,
    this.height = 80,
    this.width = 170,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 5),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image:  DecorationImage(
          image: NetworkImage(
            imageUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
