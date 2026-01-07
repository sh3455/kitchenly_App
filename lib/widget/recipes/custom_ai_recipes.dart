import 'package:flutter/material.dart';
import '../../color/app_colors.dart';
import '../../pages/recipes/details_recipes/details_recipes_screen.dart';

class CustomAiRecipes extends StatelessWidget {
   CustomAiRecipes({super.key,
     required this.title,
      required this.imagepath,
     required this.hours,
     required this.evaluation
   });
   String imagepath;
   String title;
   String evaluation;
   String hours;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailsRecipesScreen();
          },));
        },
        child: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: AppColors.iconbackground,
              borderRadius: BorderRadius.circular(22),
              boxShadow:[
                BoxShadow(
                  color: AppColors.textColor.withOpacity(0.15),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imagepath,
                fit: BoxFit.cover,
                width: double.infinity,),
              Text(title,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textColor
                ),),
              SizedBox(height: size.height*0.02,),
              Row(
                children: [
                  Icon(Icons.star,
                    color:AppColors.textColor,),
                  Text(evaluation,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.textColor
                    ),
                  ),
                  SizedBox(width: size.width*0.2,),
                  Text(hours,
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.textColor
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
