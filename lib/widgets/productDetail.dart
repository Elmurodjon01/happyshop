import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: ()=> Navigator.of(context).pop(),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('shoes')
              .snapshots(),
          builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return const Text('loading');
              default:
                return Text('data');
                // return ListView(
                //   scrollDirection: Axis.horizontal,
                //   children:
                //   snapshot.data!.docs.map((DocumentSnapshot d) {
                //     return ItemReusable(
                //       label: d.get('label'),
                //       price: d.get('price'),
                //       style: d.get('style'),
                //       image: d.get('imageUrl'),
                //     );
                //   }).toList(),
                // );
            }
          }),
    );
  }
}
