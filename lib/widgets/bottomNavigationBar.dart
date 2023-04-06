
import 'package:flutter/material.dart';

import 'package:happyshop/presentation/main_page.dart';
import 'package:happyshop/services/provider.dart';
import 'package:provider/provider.dart';

import '../constants/constants.dart';

class BottomNavBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

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
            onTap: (newIn) {
              context.read<SMProvider>()..newIndex(newIn);
              print(newIn);
            },

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
                  icon: Icon(Icons.person_pin_rounded), label: 'Account'),
            ],
          );
        },
      ),
    );
  }
}
