import 'package:flutter/material.dart';

import '../../color/app_colors.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key,required this.hinttext,required this.icon});
  String hinttext;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
          backgroundColor: AppColors.iconbackground
      ),
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.iconbackground,
          prefixIcon: Icon(icon,
            color: AppColors.textColor,),
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
    );

  }
}
