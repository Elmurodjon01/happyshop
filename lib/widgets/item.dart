import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 92,
            width: 121,
            child: Image.network(
                'https://i.pinimg.com/564x/67/a9/50/67a950538e2eb719a3993ff73a3fbe0f.jpg'),
          ),
          Row(
            children: [
              Text('Donatello'),
            ],
          ),
        ],
      ),
    );
  }
}
