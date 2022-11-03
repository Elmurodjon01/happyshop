import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ReusableSeeAll extends StatelessWidget {
  late String leading;
  ReusableSeeAll(this.leading);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leading,
            style: kDiscountEnds,
          ),
          TextButton(
            onPressed: () {
              //TODO it should show all the item in the listview
            },
            child: const Text(
              'See all',
              style: kSeeAllStyle,
            ),
          ),
        ],
      ),
    );
  }
}
