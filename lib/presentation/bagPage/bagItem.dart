import 'package:flutter/material.dart';

class BagContainer extends StatelessWidget {
   BagContainer({Key? key}) : super(key: key);
List<String> sizeOfItem = [
  'XS',
  'S',
  'M',
  'L',
];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network('https://images.unsplash.com/photo-1605348532760-6753d2c43329?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1920&q=80',),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nike', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                Text('Cream elegrant', style: TextStyle(fontSize: 13, color: Colors.blueGrey),),
                SizedBox(height: 30,),
                Row(
                  children: [

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
