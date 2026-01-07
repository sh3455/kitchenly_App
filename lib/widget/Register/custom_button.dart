import 'package:flutter/material.dart';

import '../../color/app_colors.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key,this.onTap,required this.textButton});
   String textButton;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: AppColors.textColor,
              borderRadius: BorderRadius.circular(12)
          ),
          child: Text(textButton,
            style: TextStyle(
                fontSize: 20,
                color: AppColors.iconbackground,
                fontWeight: FontWeight.w500
            ),
          )),);

  }
}
