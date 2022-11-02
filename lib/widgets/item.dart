import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 149,
      width: 121,
      margin: const EdgeInsets.only(right: 10, top: 5, left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            height: 100,
            width: 121,
            child: Image.network(
              'https://i.pinimg.com/564x/67/a9/50/67a950538e2eb719a3993ff73a3fbe0f.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Donatello',
                  style: TextStyle(fontSize: 14),
                ),
                Image(
                  image: AssetImage(
                    'assets/icons/favourite.jpeg',
                  ),
                  height: 15,
                  width: 15,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              'Cream elegant',
              style: TextStyle(fontSize: 12, color: Color(0xFFA4A4A4)),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              '\$400.00',
              style: TextStyle(color: Color(0xFF6C28FE), fontSize: 14),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 7),
            child: Text(
              '\$456.00',
              style: TextStyle(
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
