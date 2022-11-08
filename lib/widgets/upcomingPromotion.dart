import 'package:flutter/material.dart';

class PromotionItem extends StatelessWidget {
  double? height = 80;
  double? width = 170;
  PromotionItem({
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
        image: const DecorationImage(
          image: NetworkImage(
            'https://marketplace.canva.com/EAE9Qi6XWqg/1/0/1131w/canva-orange-cream-modern-special-discount-pdH-vZO6N_A.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
