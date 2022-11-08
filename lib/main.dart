import 'package:flutter/material.dart';
import 'package:happyshop/presentation/subpages/discountPage.dart';
import 'package:happyshop/services/provider.dart';
import 'package:provider/provider.dart';
import '../presentation/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => SMProvider()),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': ((context) => MainPage()),
          '/discountScreen': (context) => DiscountScreen(),
        },
      ),
    );
  }
}
