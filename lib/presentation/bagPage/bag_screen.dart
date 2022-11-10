import 'package:flutter/material.dart';
import 'package:happyshop/constants/constants.dart';
import 'package:happyshop/presentation/bagPage/bagItem.dart';

class BagScreen extends StatelessWidget {
  const BagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFe3e6e5),
      appBar: AppBar(
        title: const Text('Bag  (5 items)'),
        backgroundColor: kbottomNavColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: SizedBox(
              height: height * 0.6,
              child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, int) {
                    return BagContainer();
                  }),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 8, top: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: width * 0.7,
                          padding: const EdgeInsets.only(left: 25),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'Voucher/Gift card',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            //TODO voucher or coupon should be applied from here
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: kbottomNavColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 40,
                            width: width * 0.15,
                            child: const Center(
                              child: Text(
                                'Apply',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 18, top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Total', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        Text('\$797.80', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: kbottomNavColor),),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 18, ),
                    child: Container(
                      height: 36,
                      width: 354,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kbottomNavColor,
                      ),
                      child: const Center(
                        child: Text('CHECKOUT', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                  const Divider(),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
