import 'package:flutter/material.dart';


class WishItemContainer extends StatelessWidget {
  const WishItemContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      width: 100,
      color: Colors.green,
    );
  }
}
