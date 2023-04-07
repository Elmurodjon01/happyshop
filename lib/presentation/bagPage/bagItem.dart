// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:happyshop/presentation/bagPage/dropDown.dart';

class BagContainer extends StatelessWidget {
  String imageUrl;
  String style;
  String price;
  String discount;
  BagContainer({
    Key? key,
    required this.imageUrl,
    required this.style,
    required this.price,
    required this.discount,
  }) : super(key: key);

  static List<String> quantity = ["1", "2", "3", "4", "5", "6", "7"];
  static List<String> sizeOfItem = [
    'XS',
    'S',
    'M',
    'L',
  ];
  String dropDownValue = sizeOfItem.first;
  String dropDownValueNum = quantity.first;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 8),
      width: double.infinity,
      height: 125,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(imageUrl),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nike',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      style,
                      style:
                          const TextStyle(fontSize: 13, color: Colors.blueGrey),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Size'),
                              DropDownBox(
                                  dropDownValue: dropDownValue,
                                  sizeOfItem: sizeOfItem),
                            ],
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Quantity'),
                              DropDownBox(
                                dropDownValue: dropDownValueNum,
                                sizeOfItem: quantity,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text(
                    price,
                    style:
                        const TextStyle(color: Color(0xFF6C28FE), fontSize: 14),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Text(
                    discount,
                    style: const TextStyle(
                      color: Color(0xFF777777),
                      fontSize: 10,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
                SizedBox(
                  height: 85,
                  child: IconButton(
                    onPressed: () {
                      //TODO button should remove item from bag screen
                    },
                    icon: Icon(
                      Icons.delete,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
