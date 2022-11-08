import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ReusableSeeAll extends StatelessWidget {
  late String leading;
  Widget text;
  ReusableSeeAll({required this.leading, required this.text});

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
           onPressed: (){},

            child: text,
          ),
        ],
      ),
    );
  }
}
