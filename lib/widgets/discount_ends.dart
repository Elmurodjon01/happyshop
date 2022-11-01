import 'package:flutter/material.dart';
import 'package:happyshop/constants/constants.dart';

class DiscountLine extends StatelessWidget {
  const DiscountLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Text(
                'Discount ends in',
                style: kDiscountEnds,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'hh, mm, ss',
                style: kDiscountEnds,
              ),
            ],
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
