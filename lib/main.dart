import 'package:flutter/material.dart';
import 'package:momma/auth/signIn_screen.dart';
import 'package:momma/auth/signup_screen.dart';
import 'package:momma/auth/verify_screen.dart';
import 'package:momma/home_screen/about_screen.dart';
import 'package:momma/home_screen/cancel_order_screen.dart';
import 'package:momma/home_screen/detail_product_screen.dart';
import 'package:momma/home_screen/home_screen.dart';
import 'package:momma/home_screen/main_screen.dart';
import 'package:momma/home_screen/more_screen.dart';
import 'package:momma/home_screen/payment_mode_screen.dart';
import 'package:momma/home_screen/payment_successful_screen.dart';
import 'package:momma/home_screen/profile_screen.dart';
import 'package:momma/launch_screen/launch_screen.dart';
import 'package:momma/out_boarding_screen/out_boarding_screen.dart';

import 'home_screen/rate_order_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: const Color(0XFFFFFFFF),
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen':(context)=>const LaunchScreen(),
        '/out_boarding_screen':(context)=>const OutBoardingScreen(),
        '/signIn_screen':(context)=>const SignInScreen(),
        '/signup_screen':(context)=>const SignupScreen(),
        '/verify_screen':(context)=>const VerifyScreen(),
        '/home_screen':(context)=>const HomeScreen(),
        '/main_screen':(context)=>const MainScreen(),
        '/detail_product_screen':(context)=>const DetailProductScreen(),
        '/payment_mode_screen':(context)=>const PaymentModeScreen(),
        '/payment_successful_screen':(context)=>const PaymentSuccessfulScreen(),
        '/rate_order_screen':(context)=>const RateOrderScreen(),
        '/more_screen':(context)=>const MoreScreen(),
        '/profile_screen':(context)=>const ProfileScreen(),
        '/cancel_screen':(context)=>const CancelScreen(),
        '/about_screen':(context)=>const AboutScreen(),
      },
    );
  }
}

