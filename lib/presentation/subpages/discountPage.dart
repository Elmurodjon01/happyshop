import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:happyshop/appLogic/firebaseDB.dart';
import 'package:happyshop/widgets/discount_ends.dart';
import 'package:happyshop/widgets/productDetail.dart';

import '../../widgets/itemReusable.dart';
import '../../widgets/upcomingPromotion.dart';

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
      body: StreamBuilder<QuerySnapshot>(

          stream: FirebaseFirestore.instance.collection('discounts').snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return const Text('loading');
              default:
                return GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(10),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: snapshot.data!.docs.map((DocumentSnapshot document) {

                    var outcome = ProductModel(imageUrl1: document.get('imageUrl'), label: document.get('label'), price: document.get('price'), style: document.get('style'),
                    itemDetail: document.get('detail'), discount:  document.get('discount'), rating: document.get('rating'), imageUrl2: document.get('imageUrl1'), imageUrl3: document.get('imageUrl2'));
                    return ItemReusable(onTap: (){
                      
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetail(label: outcome.label,
                        imageurl:outcome.imageUrl1 , imageUrl1: outcome.imageUrl2!, imageUrl2: outcome.imageUrl3!, rating: outcome.rating!, price: outcome.price, detail: outcome.itemDetail!)));
                    }, label: outcome.label, price: outcome.price, style: outcome.style!, image: outcome.imageUrl1);
                  }).toList(),
                );
            }
          }
      ),

    );
  }
}
