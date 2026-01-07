import 'package:flutter/material.dart';

import '../../../color/app_colors.dart';
class CustomPreparationSteps extends StatelessWidget {
   CustomPreparationSteps({super.key,required this.text,required this.num});
  String num;
  String text;

  @override
  Widget build(BuildContext context) {
    return           SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: AppColors.iconbackground,
            borderRadius: BorderRadius.circular(18),
            boxShadow:[
              BoxShadow(
                color: AppColors.textColor.withOpacity(0.15),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ]

        ),
        child: Row(
          children: [
            Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.textColor,
                  borderRadius: BorderRadius.circular(12),

                ),
                child: Text(num,style: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                ),)),
            Text(text,
              style: TextStyle(
                fontSize: 20,
                color: AppColors.textColor,
              ),)
          ],
        ),
      ),
    );

  }
}
