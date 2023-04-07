import 'package:flutter/material.dart';
import 'package:happyshop/constants/constants.dart';
import 'package:provider/provider.dart';

import '../../services/provider.dart';

class WishItemContainer extends StatelessWidget {
  void Function()? onTap;
  int index;
  String imageUrl;
  String label;
  String price;
  String? discount;
  WishItemContainer(
      {required this.onTap,
      required this.index,
      required this.imageUrl,
      required this.label,
      required this.price,
      this.discount,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 7, right: 7, top: 3),
          height: height * 0.25,
          width: double.infinity,
          child: Row(
            children: [
              SizedBox(
                height: height * 0.23,
                width: width * 0.4,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          label,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: width * 0.15,
                        ),
                        IconButton(
                          onPressed: () => context
                              .read<SMProvider>()
                              .removeFromWishlist(index),
                          icon: Icon(Icons.delete, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    const Text(
                      'data',
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                          color: kbottomNavColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Container(
                      height: height * 0.04,
                      width: width * 0.45,
                      color: kbottomNavColor,
                      child: InkWell(
                          onTap: onTap,
                          child: const Center(
                            child: Text(
                              'ADD TO BAG',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
