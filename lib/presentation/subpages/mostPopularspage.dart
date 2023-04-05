import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:happyshop/appLogic/firebaseDB.dart';
import 'package:happyshop/constants/constants.dart';
import 'package:happyshop/widgets/itemReusable.dart';
import 'package:provider/provider.dart';

class MostPopulars extends StatelessWidget {
  String title;
  MostPopulars({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          title,
          style: const TextStyle(color: kbottomNavColor),
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Color(0xFF6C28FE),
          ),
        ),
      ),
      body: Consumer<MyDataProvider>(
  builder: (context, provider, child) {
  if (provider.pDetail.isEmpty){
    provider.fetchData();
    return const CircularProgressIndicator();
  } 
  return ListView.builder(
    itemCount: provider.pDetail.length,
      itemBuilder: (BuildContext context, int index){
      final data = provider.pDetail[index];
    return ListTile(
      leading: Text(data.label),
      subtitle: Text(data.price),
    );
  });
  },
),
      // body: StreamBuilder<QuerySnapshot>(
      //     stream:
      //     FirebaseFirestore.instance.collection('mostPopular').snapshots(),
      //     builder:
      //         (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
      //       if (snapshot.hasError) {
      //         return Text('Error: ${snapshot.error}');
      //       }
      //       switch (snapshot.connectionState) {
      //         case ConnectionState.waiting:
      //           return const Text('loading');
      //         default:
      //           return GridView.count(
      //             primary: false,
      //             padding: const EdgeInsets.all(10),
      //             crossAxisSpacing: 10,
      //             mainAxisSpacing: 10,
      //             crossAxisCount: 2,
      //             children:
      //             snapshot.data!.docs.map((DocumentSnapshot document) {
      //               return ItemReusable( onTap:(){
      //               
      //               }, 
      //                   label: document.get('label'), price: document.get('price'), style: document.get('whom'), image: document.get('imageUrl'));
      //             }).toList(),
      //           );
      //       }
      //     }),
    );
  }
}
