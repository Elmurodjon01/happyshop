import 'package:flutter/material.dart';
import 'package:happyshop/constants/constants.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kbottomNavColor,
        title: const Text('My Account'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                border: Border.all(color: kbottomNavColor, width: 5),
                borderRadius: BorderRadius.circular(45),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2952&q=80',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.history, color: kbottomNavColor, size: 28,),
            title: Text('History', style: TextStyle(fontWeight: FontWeight.w400),),
          ),
          const ListTile(
            leading: Icon(Icons.wallet, color: kbottomNavColor, size: 28,),
            title: Text('Wallet', style: TextStyle(fontWeight: FontWeight.w400),),
          ),
          const ListTile(
            leading: Icon(Icons.qr_code, color: kbottomNavColor, size: 28,),
            title: Text('QR code', style: TextStyle(fontWeight: FontWeight.w400),),
          ),
          const ListTile(
            leading: Icon(Icons.question_answer, color: kbottomNavColor, size: 28,),
            title: Text('FAQ', style: TextStyle(fontWeight: FontWeight.w400),),
          ),
          const ListTile(
            leading: Icon(Icons.language, color: kbottomNavColor, size: 28,),
            title: Text('Change language', style: TextStyle(fontWeight: FontWeight.w400),),
          ),
          const Divider(thickness: 0.5, color: Color(0xFFA4A4A4),),
         Padding(
           padding: const EdgeInsets.only(left: 10),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             TextButton(onPressed: (){}, child: const Text('Change location', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),),),
             TextButton(onPressed: (){}, child: const Text('Privacy policy', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),),),
             TextButton(onPressed: (){}, child: const Text('Admin contact', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),),),
             TextButton(onPressed: (){}, child: const Text('About app', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),),),
             TextButton(onPressed: (){}, child: const Text('Return', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),),),
             TextButton(onPressed: (){}, child: const Text('Log Out', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),),),
           ],
         )),
        ],
      ),
    );
  }
}
