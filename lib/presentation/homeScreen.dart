import 'package:flutter/material.dart';
import 'package:happyshop/presentation/subpages/promotionPage.dart';
import 'package:happyshop/presentation/subpages/shoesPage.dart';

import '../constants/constants.dart';
import '../widgets/ad_service.dart';
import '../widgets/discount_ends.dart';
import '../widgets/itemDetail.dart';
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
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetail(
                            imgUrl: 'https://i.pinimg.com/564x/86/70/15/86701598584a2376858647b302124273.jpg',
                            title: 'Pull and deer',
                            subtitle: 'Bear',
                            price: '\$398.90',
                            discount: '\$402.00',
                          ),),);
                        },
                        child: ItemReusable(
                          image:
                              'https://i.pinimg.com/564x/86/70/15/86701598584a2376858647b302124273.jpg',
                          label: 'Pull and deer',
                          style: 'Bear',
                          price: '\$398.90',
                          discount: '\$402.00',
                        ),
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
                ReusableSeeAll(leading: 'Upcoming promotion',text: GestureDetector(
                  onTap: ()=> Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  PromotionPage(title: 'Promotions',))),
                  child: const Text(
                    'See all',
                    style: kSeeAllStyle,
                  ),
                ),),
                SizedBox(
                  height: 85,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children:  [
                      PromotionItem(),
                      PromotionItem(),
                      PromotionItem(),
                      PromotionItem(),
                    ],
                  ),
                ),
                ReusableSeeAll(leading: 'New in Shoes', text: GestureDetector(
                  onTap: ()=> Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  ShoesPage(title: 'Shoes',))),
                  child: const Text(
                    'See all',
                    style: kSeeAllStyle,
                  ),
                ),),
                SizedBox(
                  height: 180,
                  child:ListView(
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

                ReusableSeeAll(leading: 'Most popular', text: const Text(
                  'See all',
                  style: kSeeAllStyle,
                ),),
                SizedBox(
                  height: 185,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ItemReusable(
                        image:
                            'https://i.pinimg.com/736x/93/c0/ba/93c0ba091e9682cdc5be60883e0ba4d8.jpg',
                        label: 'Aventus',
                        style: 'for man',
                        price: '\$127.00',
                      ),
                      ItemReusable(
                        image:
                            'https://i.pinimg.com/736x/93/c0/ba/93c0ba091e9682cdc5be60883e0ba4d8.jpg',
                        label: 'Aventus',
                        style: 'for man',
                        price: '\$127.00',
                      ),
                      ItemReusable(
                        image:
                            'https://i.pinimg.com/736x/93/c0/ba/93c0ba091e9682cdc5be60883e0ba4d8.jpg',
                        label: 'Aventus',
                        style: 'for man',
                        price: '\$127.00',
                      ),
                      ItemReusable(

                        image:
                            'https://i.pinimg.com/736x/93/c0/ba/93c0ba091e9682cdc5be60883e0ba4d8.jpg',
                        label: 'Aventus',
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
