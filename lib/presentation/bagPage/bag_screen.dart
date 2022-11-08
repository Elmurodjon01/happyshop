import 'package:flutter/material.dart';
import 'package:happyshop/constants/constants.dart';
import 'package:happyshop/presentation/bagPage/bagItem.dart';

class BagScreen extends StatelessWidget {
  const BagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bag'),
        backgroundColor: kbottomNavColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: 8,
            itemBuilder: (context, int){
          return BagContainer();
        })
      ),
    );
  }
}
