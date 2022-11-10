import 'package:flutter/material.dart';
import 'package:happyshop/constants/constants.dart';


class WishItemContainer extends StatelessWidget {
  const WishItemContainer({Key? key}) : super(key: key);

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
                child: Image.network('https://images.unsplash.com/photo-1462524500090-89443873e2b4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
                fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text('Pull and deer', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                         SizedBox(width: width * 0.15,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.delete,  color: Colors.grey[700]),),
                      ],
                    ),
                   const Text('data', style: TextStyle(fontSize: 14, color: Colors.blueGrey),),
                    SizedBox(height: height * 0.05,),
                    const Text('\$ 234.90', style: TextStyle(color: kbottomNavColor, fontSize: 18, fontWeight: FontWeight.w400),),
                     SizedBox(height: height * 0.04,),
                    Container(
                      height: height * 0.04,
                      width: width * 0.45,
                      color: kbottomNavColor,
                      child: const Center(child: Text('ADD TO BAG', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),),),
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
