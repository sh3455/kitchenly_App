import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kitchenly/pages/home/home_screen.dart';
import 'package:kitchenly/pages/onboarding/onboarding_screen.dart';
import 'package:kitchenly/pages/register/login_screen.dart';
import 'package:kitchenly/pages/register/register_screen.dart';
import 'package:kitchenly/pages/splash/splash_screen.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName:(context)=>SplashScreen(),
        OnboardingScreen.routeName:(context)=>OnboardingScreen(),
        LoginScreen.routeName:(context)=>LoginScreen(),
         RegisterScreen.routeName:(context)=>RegisterScreen(),
         HomeScreen.routeName:(context)=>HomeScreen(),
      },

    );
  }
}
