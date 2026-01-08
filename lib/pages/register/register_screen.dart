import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../color/app_colors.dart';
import '../../widget/Register/custom_button.dart';
import '../../widget/Register/custom_social_media.dart';
import '../../widget/Register/custom_text_field.dart';
import '../home/home_screen.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({super.key});
   static const routeName ="RegisterScreen";

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height*0.02,),
            Container(
              alignment: Alignment.center,
              child: Lottie.asset("assets/lottie/logo.json",width: 200),
            ),
            Text("Kitchenly",
              style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w700
              ),
            ),
            SizedBox(height: size.height*0.02,),
            CustomTextField(hinttext: "Email address", icon: Icons.email_outlined),
            SizedBox(height: size.height*0.02,),
            CustomTextField(hinttext: "Password", icon: Icons.lock_outline),
            SizedBox(height: size.height*0.02,),
            CustomTextField(hinttext: "Confirm Password", icon: Icons.lock_outline),
            SizedBox(height: size.height*0.02,),

            CustomButton(
              onTap: (){
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    },));

              },
                textButton: "Register"),
            SizedBox(height: size.height*0.02,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 20.0),

                    child: Divider(
                      color: AppColors.iconColor,
                      height: size.height*0.03,
                    ),
                  ),
                ),
                Text("or",
                  style: TextStyle(
                      color: AppColors.textColor
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: Divider(
                      color: AppColors.iconColor,
                      height: size.height*0.03,
                    ),
                  ),
                ),

              ],  ),
            SizedBox(height: size.height*0.02,),
            CustomSocialMedia(text: "Continue with Google",
              imageicon: "assets/icons/icon_google.png",),
            SizedBox(height: size.height*0.02,),
            CustomSocialMedia(text: "Continue as Guest",
                imageicon: "assets/icons/icon_guest.png"),
            SizedBox(height: size.height*0.03,),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    },));
              },
              child: Text("Already have an account?Login",
                style: TextStyle(
                    fontSize: 20,
                    color: AppColors.textColor
                ),
              ),
            )














          ],
        ),
      ),
    );
  }
}
