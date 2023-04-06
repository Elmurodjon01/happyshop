

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:happyshop/presentation/paymentPage/paymentPage.dart';

import 'package:provider/provider.dart';
import 'package:slider_button/slider_button.dart';

import '../services/provider.dart';


class ProductDetail extends StatelessWidget {
  String imageurl;
  String label;
  String imageUrl1;
  String imageUrl2;
  String rating;
  String price;
  String? discount;
  String detail;
   ProductDetail({Key? key,
     required this.label,
   required this.imageurl,
   required this.imageUrl1,
   required this.imageUrl2,
   required this.rating,
   required this.price,
   required this.detail,
   this.discount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFB9E9FC),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: (){},
              icon:const Icon( Icons.favorite, color: Colors.red,),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: height* 0.5,
                  decoration: const BoxDecoration(
                    color: Color(0xFFB9E9FC),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35.0),
                      bottomRight: Radius.circular(35.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 7,),
                      SizedBox(
                        height: height * 0.45,
                        width: double.infinity,
                        child: ImageSlideshow(
                          onPageChanged: (page) {
                            Provider.of<SMProvider>(context, listen: false)
                                .adIndex(page);
                          },
                          autoPlayInterval: 3000,
                          indicatorBackgroundColor: Colors.grey,
                          indicatorColor: Colors.white,
                          indicatorRadius: 4,
                          isLoop: true,
                          children: [
                            Image.network(imageurl),
                            Image.network(imageUrl1),
                            Image.network(imageUrl2),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, right:70),
                  child: Row(
                    children:  [
                      const Text('Size:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      sizeWidget('S'),
                  sizeWidget('M'),
                  sizeWidget('L'),
                  sizeWidget('XL'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(label, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    Row(
                      children: [
                        Text('\$$price',style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.deepOrange), ),
                        const Text('/', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Text('\$$discount',style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17,
                            color: Colors.grey, decoration: TextDecoration.lineThrough), ),
                      ],
                    ),

                  ],
                ),
                ),
                Padding(padding: const EdgeInsets.only(left:20, top: 20, right: 20),
                child: Text(detail, style: const TextStyle(color: Colors.black, fontSize: 15),),),
                const SizedBox(height: 8,),
                SliderButton(action: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PaymentPage()));
                },
                  label: const Text('Slide to buy now!', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),),
                  icon: const Center(child: Icon(Icons.shopping_cart_checkout, size: 40.0,),),
                  boxShadow:const BoxShadow(
                    color: Colors.black,
                    blurRadius: 4,
                  ),
                  shimmer: true,
                  vibrationFlag: true,
                  width: 270,
                  radius: 50,
                  buttonColor: const Color(0xFFFF8400),
                  backgroundColor: const Color(0xFFFEFF86),
                  highlightedColor: Colors.white,
                  baseColor: Colors.black,


                ),
              ],

            ),

          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.store))
      //   ],
      //
      // ),
    );
  }
}


Widget sizeWidget (String size){
  return Chip(
    elevation: 2,
    backgroundColor: Colors.white,
    label: Text(size, style: const TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 20),), );
}