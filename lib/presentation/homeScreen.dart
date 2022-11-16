import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:happyshop/presentation/subpages/promotionPage.dart';
import 'package:happyshop/presentation/subpages/shoesPage.dart';
import 'package:happyshop/widgets/itemDetail.dart';

import '../constants/constants.dart';
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
                  height: 180,
                  child: StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance.collection('discounts').snapshots(),
                    builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      }
                      switch (snapshot.connectionState) {
                        case ConnectionState.waiting:
                          return const Text('loading');
                        default:
                          return ListView(
                            scrollDirection: Axis.horizontal,
                            children: snapshot.data!.docs.map((DocumentSnapshot document) {
                              return GestureDetector(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return ItemDetail();
                                })),
                                child: ItemReusable(
                                  discount: document.get('discount'),
                                  image: document.get('imageUrl'),
                                    label: document.get('label'),
                                    price: document.get('price'),
                                    style: document.get('style'),

                                ),
                              );
                            }).toList(),
                          );
                      }
                    }
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
                  child: StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance.collection('promotions').snapshots(),
                      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        }
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return Text('loading');
                          default:
                            return ListView(
                              scrollDirection: Axis.horizontal,
                              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                                return PromotionItem(imageUrl: document.get('imageUrl'),);
                              }).toList(),
                            );
                        }
                      }
                  ),
                  // child: ListView(
                  //   scrollDirection: Axis.horizontal,
                  //   children:  [
                  //     PromotionItem(imageUrl: ,),
                  //     PromotionItem(),
                  //     PromotionItem(),
                  //     PromotionItem(),
                  //   ],
                  // ),
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

