import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/constants.dart';

class AdService extends StatelessWidget {
  const AdService({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        Container(
          alignment: Alignment.bottomLeft,
          height: 162,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://i.pinimg.com/564x/50/f6/f7/50f6f731a2ca23aa58cfe4f776ca80a8.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 47,
                width: 213,
                child: Text(
                  'Discount of all types of clothes',
                  style: kAdTextStyle,
                ),
              ),
              Container(
                height: 25,
                width: 110,
                color: const Color(0xFFFF9900),
                child: const Text(
                  'Up to 45 %',
                  style: kDiscountColor,
                  textAlign: TextAlign.center,
                ),
              ),
              const Text(
                'Only on the night sale 12-13 October',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
      ],
    );
  }
}
