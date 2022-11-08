// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:happyshop/constants/constants.dart';
import 'package:happyshop/presentation/subpages/discountPage.dart';
import 'package:slide_countdown/slide_countdown.dart';

class DiscountLine extends StatelessWidget {
  String? seeAll;
  DiscountLine(this.seeAll);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Text(
                'Discount ends in',
                style: kDiscountEnds,
              ),
              const SizedBox(
                width: 8,
              ),
              SlideCountdownSeparated(
                decoration: BoxDecoration(
                  color: kbottomNavColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                duration: const Duration(days: 1),
                countUp: false,
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              //TODO it should show all the item in the listview
            },
            child: GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DiscountScreen())),
              child: Text(
                seeAll ?? '',
                style: kSeeAllStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
