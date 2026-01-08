import 'package:flutter/material.dart';

import '../../../../color/app_colors.dart';

class CustomTextFieldAdd extends StatelessWidget {
   CustomTextFieldAdd({super.key,required this.hinttext});
  String hinttext;


  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        maxLines: 10,
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.iconbackground,
            hintText: hinttext,
            hintStyle: TextStyle(
                color: AppColors.iconColor
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                    color: Colors.transparent
                )
            )
        ),
      ),
    );

  }
}
