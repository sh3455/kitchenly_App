import 'package:flutter/material.dart';
import '../../color/app_colors.dart';
import '../../model/onboarding/onboarding_model.dart';

class OnboardingItem extends StatelessWidget {
   OnboardingItem({super.key,required this.onboardingModel});
  OnboardingModel onboardingModel;

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(onboardingModel.image),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(16),
            child: Text(onboardingModel.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: 32,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
          SizedBox(height: size.height*0.0008,),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(16),
            child: Text(onboardingModel.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
