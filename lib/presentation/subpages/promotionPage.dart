import 'package:flutter/material.dart';
import 'package:happyshop/constants/constants.dart';
import 'package:happyshop/widgets/discount_ends.dart';
import 'package:happyshop/widgets/upcomingPromotion.dart';



class PromotionPage extends StatelessWidget {
  String title;
PromotionPage({required this.title});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(title, style: const TextStyle(color: kbottomNavColor),),
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
         PromotionItem(
           height: 110,
           width: width * 0.3,
         ),
          PromotionItem(
            height: 110,
            width: width * 0.3,
          ),
          PromotionItem(
            height: 110,
            width: width * 0.3,
          ),
          PromotionItem(
            height: 110,
            width: width * 0.3,
          ),


        ],
      ),

    );
  }
}
