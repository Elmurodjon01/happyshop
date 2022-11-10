import 'package:flutter/material.dart';
import 'package:happyshop/constants/constants.dart';
import 'package:happyshop/presentation/wishlistpage/wishitemContainer.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kbottomNavColor,
        title: const Text('Wishlist'),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (ctx, i){
        return WishItemContainer();
      }, ),
    );
  }
}
