import 'package:flutter/material.dart';

import '../../../color/app_colors.dart';
import '../../../widget/Register/custom_text_field.dart';
import '../../../widget/home/custom_categories_name.dart';

class ExploreRecipes extends StatelessWidget {
  const ExploreRecipes({super.key});
  static const routeName ="Explore Recipes";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: AppBar(
        backgroundColor: AppColors.appBackground,
        iconTheme: IconThemeData(
          color: AppColors.textColor
        ),
        title: Text("Explore Recipes",
          style: TextStyle(
          fontSize: 25,
            color: AppColors.textColor
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextField(hinttext: "Search For recipes", icon: Icons.search),
            SizedBox(height: size.height*0.02,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.iconbackground,
                      borderRadius: BorderRadius.circular(12)
                    ),
                      child: Icon(Icons.list,color: AppColors.textColor,)),
                  SizedBox(width: size.width*0.02,),
                  CustomCategoriesName(text: "Time"),
                  SizedBox(width: size.width*0.02,),
                  CustomCategoriesName(text: "Difficulty"),
                  SizedBox(width: size.width*0.02,),
                  CustomCategoriesName(text: "Calories"),
                  SizedBox(width: size.width*0.02,),
                  CustomCategoriesName(text: "Cost"),


                ],
              ),
            ),
            SizedBox(height: size.height*0.2,),
            Icon(Icons.search,size: 100,color: AppColors.textColor,),
            Text("Search for recipes to see results",
              style: TextStyle(
                fontSize: 20,
                color: AppColors.textColor
              ),
            )

          ],
        ),
      ),
    );
  }
}
