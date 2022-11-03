// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:happyshop/presentation/main_page.dart';
import 'package:happyshop/services/provider.dart';
import 'package:provider/provider.dart';

import '../constants/constants.dart';

class BottomNavBar extends StatelessWidget {
  // int newIndex;
  // BottomNavBar({
  //   Key? key,
  //   required this.newIndex,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SMProvider smProvider = SMProvider();
    final provider = Provider.of<SMProvider>(context);
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: kbottomNavColor,
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: const TextStyle(color: kbottomNavColor))),
      child: Consumer(
        builder: (context, value, child) {
          return BottomNavigationBar(
            onTap: (newIn) => provider.newIndex(newI: newIn),
            unselectedLabelStyle: const TextStyle(color: Colors.white),
            currentIndex: provider.initialIndex,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.white,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: 'Category'),
              BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Bag'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline_outlined),
                  label: 'Wishlist'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Account'),
            ],
          );
        },
      ),
    );
  }
}
