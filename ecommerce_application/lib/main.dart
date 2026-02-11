import 'package:ecommerce_application/constants.dart';
import 'package:ecommerce_application/firebase_options.dart';
import 'package:ecommerce_application/screens/home_screen.dart';
import 'package:ecommerce_application/screens/login_screen.dart';
import 'package:ecommerce_application/screens/signup_screen.dart';
import 'package:ecommerce_application/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  EcommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        splashScreen: (context) => SplashScreen(),
        welcomeScreen: (context) => SplashScreen(),
        signupScreen: (context) => SignupScreen(),
        loginenScreen: (context) => LoginScreen(),
        homeScreen: (context) => HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: splashScreen,
    );
  }
}
