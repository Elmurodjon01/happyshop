import 'package:flutter/material.dart';
import 'package:happyshop/widgets/discount_ends.dart';

import '../../constants/constants.dart';
import '../../widgets/itemReusable.dart';

class ShoesPage extends StatelessWidget {
  String title;
  ShoesPage({required this.title});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(title,style: const TextStyle(color: kbottomNavColor),),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Color(0xFF6C28FE),
          ),
        ),

      ),
      body:  GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          ItemReusable(
            onTap: (){},
            height: 110,
            width: width * 0.3,
            image:
            'https://i.pinimg.com/564x/d5/57/61/d5576189e807ec200a3e610ac1109411.jpg',
            label: 'Nike',
            style: 'classic',
            price: '\$258.00',
          ),
          ItemReusable(
            onTap: (){},
            height: 110,
            width: width * 0.3,
            image:
            'https://i.pinimg.com/564x/d5/57/61/d5576189e807ec200a3e610ac1109411.jpg',
            label: 'Nike',
            style: 'classic',
            price: '\$258.00',
          ),
          ItemReusable(
            onTap: (){},
            height: 110,
            width: width * 0.3,
            image:
            'https://i.pinimg.com/564x/d5/57/61/d5576189e807ec200a3e610ac1109411.jpg',
            label: 'Nike',
            style: 'classic',
            price: '\$258.00',
          ),
          ItemReusable(
            onTap: (){},
            height: 110,
            width: width * 0.3,
            image:
            'https://i.pinimg.com/564x/d5/57/61/d5576189e807ec200a3e610ac1109411.jpg',
            label: 'Nike',
            style: 'classic',
            price: '\$258.00',
          ),
        ],
      ),

    );
  }
}
