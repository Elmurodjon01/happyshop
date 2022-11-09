import 'package:flutter/material.dart';
import 'package:happyshop/presentation/bagPage/dropDown.dart';

class BagContainer extends StatefulWidget {
  BagContainer({Key? key}) : super(key: key);

  @override
  State<BagContainer> createState() => _BagContainerState();
}

class _BagContainerState extends State<BagContainer> {
  List<String> sizeOfItem = [
    'XS',
    'S',
    'M',
    'L',
  ];
  List<String> quantity = ["1", "2", "3", "4", "5", "6", "7"];

  @override
  Widget build(BuildContext context) {
    String dropDownValue = sizeOfItem.first;
    String dropDownValueNum = quantity.first;
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
                child: Image.network(
                  'https://images.unsplash.com/photo-1605348532760-6753d2c43329?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1920&q=80',
                ),
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
                    const Text(
                      'Cream elegrant',
                      style: TextStyle(fontSize: 13, color: Colors.blueGrey),
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
                                  sizeOfItem: quantity),
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
                const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text(
                    '\$398.90',
                    style: TextStyle(color: Color(0xFF6C28FE), fontSize: 14),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 7),
                  child: Text(
                    '\$402.00',
                    style: TextStyle(
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
