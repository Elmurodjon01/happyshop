import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Text(
          'wishlist screen',
          style: TextStyle(fontSize: 40),
        ),
      )),
    );
  }
}
