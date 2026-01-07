import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../color/app_colors.dart';
import '../../model/onboarding/onboarding_model.dart';
import 'onboarding_item.dart';

class OnboardingScreen extends StatefulWidget {
   OnboardingScreen({super.key});
  static String routeName = "OnboardingScreen";

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  var activeIndex =0;

  @override
  Widget build(BuildContext context) {
    var controller = PageController();
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              onPageChanged: (value) {
                activeIndex =value;
                setState(() {

                });
              },
              itemCount: OnboardingModel.onboardingModel.length,
                itemBuilder: (context, index) {
                  OnboardingModel onboardingModel = OnboardingModel.onboardingModel[index];
                  return OnboardingItem(onboardingModel: onboardingModel);
                },),
          ),

          AnimatedSmoothIndicator(
    activeIndex: activeIndex ,
    count: OnboardingModel.onboardingModel.length,
    effect: ExpandingDotsEffect(
    dotHeight: 7,
    dotWidth: 7,
    activeDotColor: AppColors.textColor,
    ),
    ),

        GestureDetector(
      onTap: (){
        controller.nextPage(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn);
        if(activeIndex < OnboardingModel.onboardingModel.length){
          activeIndex++;
        }else{
          // Navigator.pushReplacement(context,
          //     MaterialPageRoute(builder: (context) {
          //       return LoginScreen();
          //     },));
        }
      },
      child: Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.textColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ]
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Next",
              style: TextStyle(
                color: AppColors.appBackground,
                fontSize: 18,
                fontWeight: FontWeight.w700
              ),
            ),
            Icon(Icons.navigate_next_outlined)
          ],
        ),
      ),
    )
        ],
      ),
    );
  }
}
