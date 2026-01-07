import 'package:flutter/material.dart';

import '../../color/app_colors.dart';
import '../../pages/recipes/explore_recipes/explore_recipes.dart';


class CustomCategoriesName extends StatelessWidget {
   CustomCategoriesName({super.key,required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ExploreRecipes();
        },));
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: AppColors.iconbackground,
            borderRadius: BorderRadius.circular(12)
      
        ),
        child: Text(text,
          style: TextStyle(
              fontSize: 20,
              color: AppColors.textColor
          ),),
      ),
    );

  }
}
