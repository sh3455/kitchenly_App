import 'package:flutter/material.dart';

import '../../color/app_colors.dart';

class CustomSocialMedia extends StatelessWidget {
   CustomSocialMedia({super.key,required this.text,required this.imageicon});
  String imageicon;
  String text;

  @override
  Widget build(BuildContext context) {
    return             Container(
      decoration: BoxDecoration(
          color: AppColors.iconbackground,
          borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageIcon(AssetImage(imageicon),
            color: AppColors.textColor,
            size: 50,
          ),
          Text(text,
            style: TextStyle(
                fontSize: 20,
                color: AppColors.textColor
            ),
          )
        ],
      ),
    );

  }
}
