import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happyshop/presentation/subpages/discountPage.dart';
import 'package:happyshop/services/provider.dart';
import 'package:provider/provider.dart';
import '../presentation/main_page.dart';
import 'presentation/notificationPage.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarBrightness: Brightness.dark,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
          '/discountScreen': (context) => const DiscountScreen(),
          '/notificationScreen': (context) => NotificationScreen(),
        },
      ),
    );
  }
}
//MainPage