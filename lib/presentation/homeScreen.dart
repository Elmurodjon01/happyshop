import 'package:flutter/material.dart';

import '../widgets/ad_service.dart';
import '../widgets/discount_ends.dart';
import '../widgets/itemReusable.dart';
import '../widgets/reusable_seeall.dart';
import '../widgets/search_area.dart';
import '../widgets/upcomingPromotion.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const SearchArea(),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                const AdService(),
                DiscountLine('See all'),
                SizedBox(
                  height: 185,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ItemReusable(
                        image:
                            'https://i.pinimg.com/564x/86/70/15/86701598584a2376858647b302124273.jpg',
                        label: 'Pull and deer',
                        style: 'Bear',
                        price: '\$398.90',
                        discount: '\$402.00',
                      ),
                      ItemReusable(
                        image:
                            'https://i.pinimg.com/564x/86/70/15/86701598584a2376858647b302124273.jpg',
                        label: 'Pull and deer',
                        style: 'Bear',
                        price: '\$398.90',
                        discount: '\$402.00',
                      ),
                      ItemReusable(
                        image:
                            'https://i.pinimg.com/564x/86/70/15/86701598584a2376858647b302124273.jpg',
                        label: 'Pull and deer',
                        style: 'Bear',
                        price: '\$398.90',
                        discount: '\$402.00',
                      ),
                      ItemReusable(
                        image:
                            'https://i.pinimg.com/564x/86/70/15/86701598584a2376858647b302124273.jpg',
                        label: 'Pull and deer',
                        style: 'Bear',
                        price: '\$398.90',
                        discount: '\$402.00',
                      ),
                    ],
                  ),
                ),
                ReusableSeeAll('Upcoming promotion'),
                SizedBox(
                  height: 85,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      PromotionItem(),
                      PromotionItem(),
                      PromotionItem(),
                      PromotionItem(),
                    ],
                  ),
                ),
                ReusableSeeAll('New in Shoes'),
                SizedBox(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ItemReusable(
                        image:
                            'https://i.pinimg.com/564x/d5/57/61/d5576189e807ec200a3e610ac1109411.jpg',
                        label: 'Nike',
                        style: 'classic',
                        price: '\$258.00',
                      ),
                      ItemReusable(
                        image:
                            'https://i.pinimg.com/564x/d5/57/61/d5576189e807ec200a3e610ac1109411.jpg',
                        label: 'Nike',
                        style: 'classic',
                        price: '\$258.00',
                      ),
                      ItemReusable(
                        image:
                            'https://i.pinimg.com/564x/d5/57/61/d5576189e807ec200a3e610ac1109411.jpg',
                        label: 'Nike',
                        style: 'classic',
                        price: '\$258.00',
                      ),
                      ItemReusable(
                        image:
                            'https://i.pinimg.com/564x/d5/57/61/d5576189e807ec200a3e610ac1109411.jpg',
                        label: 'Nike',
                        style: 'classic',
                        price: '\$258.00',
                      ),
                    ],
                  ),
                ),
                ReusableSeeAll('Most popular'),
                SizedBox(
                  height: 185,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ItemReusable(
                        image:
                            'https://i.pinimg.com/736x/93/c0/ba/93c0ba091e9682cdc5be60883e0ba4d8.jpg',
                        label: 'Creed Aventus',
                        style: 'for man',
                        price: '\$127.00',
                      ),
                      ItemReusable(
                        image:
                            'https://i.pinimg.com/736x/93/c0/ba/93c0ba091e9682cdc5be60883e0ba4d8.jpg',
                        label: 'Creed Aventus',
                        style: 'for man',
                        price: '\$127.00',
                      ),
                      ItemReusable(
                        image:
                            'https://i.pinimg.com/736x/93/c0/ba/93c0ba091e9682cdc5be60883e0ba4d8.jpg',
                        label: 'Creed Aventus',
                        style: 'for man',
                        price: '\$127.00',
                      ),
                      ItemReusable(
                        image:
                            'https://i.pinimg.com/736x/93/c0/ba/93c0ba091e9682cdc5be60883e0ba4d8.jpg',
                        label: 'Creed Aventus',
                        style: 'for man',
                        price: '\$127.00',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
