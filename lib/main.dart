import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happyshop/presentation/SignLogin/signInPage.dart';
import 'package:happyshop/presentation/subpages/discountPage.dart';
import 'package:happyshop/services/provider.dart';
import 'package:happyshop/services/signLogProvider.dart';
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
    return MultiProvider(
      providers: [
        Provider(create: (context) => SMProvider()),
        Provider(create: (context) => SignInLogic()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': ((context) => SignInScreen()),
          '/discountScreen': (context) => const DiscountScreen(),
          '/notificationScreen': (context) => NotificationScreen(),
        },
      ),
    );
  }
}
//MainPage