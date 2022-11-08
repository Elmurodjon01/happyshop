import 'package:flutter/material.dart';


class CategoryCard extends StatelessWidget {
  String image;
  String label;
  CategoryCard({
    required this.image,
    required this.label,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(image,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            color: Colors.red,
            child: Text(label, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}
