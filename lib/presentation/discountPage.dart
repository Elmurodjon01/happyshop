import 'package:flutter/material.dart';
import 'package:happyshop/widgets/discount_ends.dart';

import '../widgets/itemReusable.dart';

class DiscountScreen extends StatelessWidget {
  const DiscountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Color(0xFF6C28FE),
          ),
        ),
        actions: [
          DiscountLine(
            '',
          ),
        ],
      ),
      body:  GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            ItemReusable(
              height: 110,
              width: width * 0.3,
              image:
                  'https://i.pinimg.com/564x/86/70/15/86701598584a2376858647b302124273.jpg',
              label: 'Pull and deer',
              style: 'Bear',
              price: '\$398.90',
              discount: '\$402.00',
            ),
            ItemReusable(
              height: 110,
              width: width * 0.3,
              image:
                  'https://i.pinimg.com/564x/86/70/15/86701598584a2376858647b302124273.jpg',
              label: 'Pull and deer',
              style: 'Bear',
              price: '\$398.90',
              discount: '\$402.00',
            ),
            ItemReusable(
              height: 110,
              width: width * 0.3,
              image:
                  'https://i.pinimg.com/564x/86/70/15/86701598584a2376858647b302124273.jpg',
              label: 'Pull and deer',
              style: 'Bear',
              price: '\$398.90',
              discount: '\$402.00',
            ),
            ItemReusable(
              height: 110,
              width: width * 0.3,
              image:
                  'https://i.pinimg.com/564x/86/70/15/86701598584a2376858647b302124273.jpg',
              label: 'Pull and deer',
              style: 'Bear',
              price: '\$398.90',
              discount: '\$402.00',
            ),
          ],
        ),

    );
  }
}
