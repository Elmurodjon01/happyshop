import 'package:flutter/material.dart';

import '../constants/constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _defaultIndex = 0;
  void _changePage(int i) {
    setState(() {
      _defaultIndex = i;
    });
    print(_defaultIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: kbottomNavColor,
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: const TextStyle(color: kbottomNavColor))),
      child: BottomNavigationBar(
        onTap: _changePage,
        currentIndex: _defaultIndex,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Bag'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
