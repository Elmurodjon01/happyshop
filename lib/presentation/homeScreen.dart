import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:happyshop/presentation/subpages/mostPopularspage.dart';
import 'package:happyshop/presentation/subpages/promotionPage.dart';
import 'package:happyshop/presentation/subpages/shoesPage.dart';
import 'package:happyshop/widgets/itemDetail.dart';
import 'package:happyshop/widgets/productDetail.dart';

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
                      stream: FirebaseFirestore.instance
                          .collection('discounts')
                          .snapshots(),
                      builder: (BuildContext context,
                          AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        }
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return const Text('loading');
                          default:
                            return ListView(
                              scrollDirection: Axis.horizontal,
                              children: snapshot.data!.docs
                                  .map((DocumentSnapshot document) {
                                return GestureDetector(
                                  onTap: () => Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return ItemDetail();
                                  })),
                                  child: ItemReusable(
                                    onTap: (){},
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
                      }),
                ),
                ReusableSeeAll(
                  leading: 'Upcoming promotion',
                  text: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PromotionPage(
                                  title: 'Promotions',
                                ))),
                    child: const Text(
                      'See all',
                      style: kSeeAllStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 85,
                  child: StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection('promotions')
                          .snapshots(),
                      builder: (BuildContext context,
                          AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        }
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return const Text('loading');
                          default:
                            return ListView(
                              scrollDirection: Axis.horizontal,
                              children: snapshot.data!.docs
                                  .map((DocumentSnapshot document) {
                                return PromotionItem(
                                  imageUrl: document.get('imageUrl'),
                                );
                              }).toList(),
                            );
                        }
                      }),
                ),
                ReusableSeeAll(
                  leading: 'New in Shoes',
                  text: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShoesPage(
                                  title: 'Shoes',
                                ))),
                    child: const Text(
                      'See all',
                      style: kSeeAllStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection('shoes')
                          .snapshots(),
                      builder: (BuildContext context,
                          AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        }
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return const Text('loading');
                          default:
                            return ListView(
                              scrollDirection: Axis.horizontal,
                              children:
                              snapshot.data!.docs.map((DocumentSnapshot d) {
                                return ItemReusable(
                                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ProductDetail())),
                                  label: d.get('label'),
                                  price: d.get('price'),
                                  style: d.get('style'),
                                  image: d.get('imageUrl'),
                                );
                              }).toList(),
                            );
                        }
                      }),
                ),
                ReusableSeeAll(
                  leading: 'Most popular',
                  text: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              MostPopulars(title: 'Most populars')),

                      );
                    },
                    child: const Text(
                      'See all',
                      style: kSeeAllStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 185,
                  child: StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection('mostPopular')
                          .snapshots(),
                      builder: (BuildContext context,
                          AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        }
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return const Text('loading');
                          default:
                            return ListView(
                              scrollDirection: Axis.horizontal,
                              children:
                                  snapshot.data!.docs.map((DocumentSnapshot d) {
                                return ItemReusable(
                                  onTap: (){},
                                  label: d.get('label'),
                                  price: d.get('price'),
                                  style: d.get('whom'),
                                  image: d.get('imageUrl'),
                                );
                              }).toList(),
                            );
                        }
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
