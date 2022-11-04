// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class AdBox extends StatelessWidget {
  String imageAdress;
  String label;
  String discount;
  String deadline;
  AdBox({
    Key? key,
    required this.imageAdress,
    required this.label,
    required this.discount,
    required this.deadline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      height: 162,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageAdress),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 47,
              width: 211,
              child: Text(
                label,
                style: kAdTextStyle,
              ),
            ),
            Container(
              height: 25,
              width: 110,
              color: const Color(0xFFFF9900),
              child: Text(
                discount,
                style: kDiscountColor,
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              deadline,
              style: const TextStyle(fontSize: 12, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
