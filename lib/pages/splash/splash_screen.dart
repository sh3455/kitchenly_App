import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../color/app_colors.dart';
import '../onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static String routeName ="SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) =>  OnboardingScreen()),
      );
    });
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.appBackground,
      body: Center(
        child: Lottie.asset("assets/lottie/logo.json"),
      ),

    );
  }
}
