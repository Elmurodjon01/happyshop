import 'package:flutter/material.dart';

class Liabilities {
  List<String> images = [
    'https://i.pinimg.com/564x/d1/df/78/d1df78eb20bef51b3be46ee2296822b0.jpg',
    'https://i.pinimg.com/736x/e7/38/26/e73826c0e05bff4526c6d7fd21a6629f.jpg',
    'https://i.pinimg.com/736x/25/92/a7/2592a72cd0c8c9d9b1c629c4286adf39.jpg',
    'https://i.pinimg.com/564x/c2/40/d8/c240d8c5f15ced9922cb3ecb684dba5a.jpg',
  ];

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.black : Colors.black26,
            shape: BoxShape.circle),
      );
    });
  }
}
