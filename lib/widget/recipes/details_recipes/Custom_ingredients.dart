import 'package:flutter/material.dart';

import '../../../color/app_colors.dart';


class CustomIngredients extends StatelessWidget {
   CustomIngredients({super.key,required this.text,required this.icon});
  IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Icon(icon,
              color: AppColors.textColor,),
            SizedBox(width: size.width*0.02,),
            Text(text,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textColor),)
          ],
        ),
      ],
    );

  }
}
