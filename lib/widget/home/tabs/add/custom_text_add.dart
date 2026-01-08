import 'package:flutter/material.dart';

import '../../../../color/app_colors.dart';

class CustomTextAdd extends StatelessWidget {
   CustomTextAdd({super.key,required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return  Text(text,style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: AppColors.textColor,
    ),);

  }
}
