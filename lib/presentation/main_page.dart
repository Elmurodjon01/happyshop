import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:happyshop/widgets/ad_service.dart';
import 'package:happyshop/widgets/search_area.dart';

import '../widgets/discount_ends.dart';
import '../widgets/item.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const SearchArea(),
            ),
            const AdService(),
            const DiscountLine(),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Item(),
                  Item(),
                  Item(),
                  Item(),
                  Item(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
