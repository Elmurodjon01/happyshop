import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:happyshop/constants/constants.dart';
import 'package:happyshop/model/itemDetailModel.dart';
import 'package:happyshop/presentation/bagPage/bag_screen.dart';

class ItemDetail extends StatefulWidget {

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
List<Object> itemSpecs = [];
late ItemDetailModel itemDetailModel;
@override
void didChangeDependencies(){
  super.didChangeDependencies();
  getItemSpecs();
}
@override
  void initState() {
    getItemSpecs();
    super.initState();
  }


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
              width: double.infinity,
              child: Image.network('itemSpecs.ge',
                fit: BoxFit.cover,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("mainData.title", style:const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),),
                  const SizedBox(height: 3,),
                  Text("mainData.subtitle", style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),),
                  const SizedBox(height: 8,),
                  Row(
                    children: [
                      Text("mainData.price",style: const TextStyle(color: kbottomNavColor, fontWeight: FontWeight.w400, fontSize: 13),),
                      const SizedBox(width: 6,),
                      Text("mainData.discount" ?? '',style: const TextStyle(color: Color(0xFF777777), fontWeight: FontWeight.w400, fontSize: 10, decoration: TextDecoration.lineThrough,),),
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

  Future getItemSpecs() async {
var data = await FirebaseFirestore.instance.collection('discounts').doc('1stFIvf7yfF52vJC90F9').collection('itemDetail').get();
setState(() {
  itemSpecs = List.from(data.docs.map((document) => ItemDetailModel.fromSnapshot(document)));
  print(itemSpecs.length);
});
  }
}


