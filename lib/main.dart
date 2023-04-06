import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happyshop/appLogic/firebaseDB.dart';
import 'package:happyshop/presentation/SignLogin/signInPage.dart';
import 'package:happyshop/presentation/homeScreen.dart';
import 'package:happyshop/presentation/main_page.dart';
import 'package:happyshop/presentation/subpages/discountPage.dart';
import 'package:happyshop/services/provider.dart';
import 'package:happyshop/services/signLogProvider.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'presentation/notificationPage.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarBrightness: Brightness.dark,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  // Box box = await Hive.openBox('testBox');
  await Firebase.initializeApp();
  await Hive.initFlutter();
  await Hive.openBox('personalInfo');
  runApp(const MyApp());
}

// void init() async {
//   final dir = await getApplicationDocumentsDirectory();
//   Hive.init(dir.path);
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SMProvider()),
        ChangeNotifierProvider(create: (context) => SignInLogic()),
        // ChangeNotifierProvider(create: (context) => MyDataProvider()),
      ],
      child: FirebasePhoneAuthProvider(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/',
          routes: {
            // '/': (context) => HomeScreen(),
            '/': (context) => SignInScreen(),
            'mainScreen': (context) => MainPage(),
            '/discountScreen': (context) => const DiscountScreen(),
            '/notificationScreen': (context) => NotificationScreen(),
          },
        ),
      ),
    );
  }
}
