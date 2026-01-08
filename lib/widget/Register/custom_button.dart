import 'package:flutter/material.dart';

import '../../color/app_colors.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key,this.onTap,required this.textButton,this.icon});
   String textButton;
  VoidCallback? onTap;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon,size: 30,),
              SizedBox(width: size.width*0.01,),
              Text(textButton,
                style: TextStyle(
                    fontSize: 20,
                    color: AppColors.iconbackground,
                    fontWeight: FontWeight.w500
                ),
              ),
            ],
          )),);

  }
}
