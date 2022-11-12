import 'package:flutter/material.dart';
import 'package:happyshop/constants/constants.dart';
import 'package:happyshop/presentation/bagPage/bag_screen.dart';

class ItemDetail extends StatelessWidget {
  // String imgUrl;
  // String title;
  // String subtitle;
  // String price;
  // String? discount;
  // bool isFavourite = false;
  // ItemDetail({
  //   required this.imgUrl,
  //   required this.title,
  //   required this.subtitle,
  //   required this.price,
  //   this.isFavourite = false,
  //   this.discount,
  // });

  @override
  Widget build(BuildContext context)  {
    bool isFavourite = false;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: const Color(0xFFBDBDBD),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(Icons.arrow_back_ios_new, ),),
                  ),
                  IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const BagScreen()));
                    },
                    icon: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: const Color(0xFFBDBDBD),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(Icons.shopping_bag,),),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: height * 0.7,
              child: Image.network('https://images.unsplash.com/photo-1526470498-9ae73c665de8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1396&q=80',
              fit: BoxFit.cover,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const Text('Label here', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),),
                  const SizedBox(height: 3,),
                  const Text('A bit detail of item', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),),
                  const SizedBox(height: 8,),
                  Row(
                    children:const [
                      Text('\$219.00',style: TextStyle(color: kbottomNavColor, fontWeight: FontWeight.w400, fontSize: 13),),
                      SizedBox(width: 6,),
                      Text('\$319.00' ?? '',style: TextStyle(color: Color(0xFF777777), fontWeight: FontWeight.w400, fontSize: 10, decoration: TextDecoration.lineThrough,),),
                    ],
                  ),
                   SizedBox(height: height * 0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: (){},
                        icon:  Icon(
                          isFavourite ? Icons.favorite : Icons.favorite_border, color: Colors.red,
                          size: 39,
                        ),),
                      SizedBox(width: width * 0.01,),
                      Container(
                        height: height * 0.05 ,
                        width: width * 0.7,
                        decoration:const BoxDecoration(
                          color: kbottomNavColor,

                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: (){},
                            child: const Text('Order', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
