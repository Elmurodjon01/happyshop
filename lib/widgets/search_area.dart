import 'package:flutter/material.dart';
import 'package:happyshop/constants/constants.dart';

class SearchArea extends StatelessWidget {
  const SearchArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 35,
          width: 314,
          decoration: BoxDecoration(
            color: kSearchBarColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const TextField(
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: kSearchColor,
              ),
              border: InputBorder.none,
              hintText: 'Search what you need',
              hintStyle: TextStyle(color: kSearchColor),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed('/notificationScreen'),
          child: Container(
            margin: const EdgeInsets.only(left: 20),
            child: Image.asset('assets/icons/notify.jpeg'),
          ),
        ),
      ],
    );
  }
}
