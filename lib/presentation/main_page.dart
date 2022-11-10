// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:happyshop/constants/constants.dart';
import 'package:happyshop/presentation/accountScreen.dart';
import 'package:happyshop/presentation/bagPage/bag_screen.dart';
import 'package:happyshop/presentation/categoryScreen.dart';
import 'package:happyshop/presentation/homeScreen.dart';
import 'package:happyshop/presentation/wishlistpage/wishlistScreen.dart';
import 'package:happyshop/services/provider.dart';
import 'package:happyshop/widgets/ad_service.dart';
import 'package:happyshop/widgets/reusable_seeall.dart';
import 'package:happyshop/widgets/search_area.dart';
import 'package:happyshop/widgets/upcomingPromotion.dart';
import 'package:provider/provider.dart';

import '../widgets/bottomNavigationBar.dart';
import '../widgets/discount_ends.dart';
import '../widgets/itemReusable.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final ScrollController _scrollController = ScrollController();
  final List screens = const [
    HomeScreen(),
    CategoryScreen(),
    BagScreen(),
    WishListScreen(),
    AccountScreen(),
  ];
  SMProvider smprovider = SMProvider();
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SMProvider>(context);
    return Consumer(
      builder: (context, value, child) {
        return Scaffold(
          body: screens[provider.initialIndex],
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
