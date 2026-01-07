import 'package:flutter/material.dart';
import '../../../color/app_colors.dart';
import '../../../widget/recipes/details_recipes/Custom_ingredients.dart';
import '../../../widget/recipes/details_recipes/Custom_preparation_steps.dart';
import '../../home/home_screen.dart';

class DetailsRecipesScreen extends StatelessWidget {
  const DetailsRecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Image.asset(
                    "assets/images/recipe.jpg",
                    width: double.infinity,
                    height: 280,
                    fit: BoxFit.cover,
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(20),
                  //padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.iconbackground,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Positioned(
                    top: 20,
                    left: 20,
                    child: IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return HomeScreen();
                          },));
                        },
                        icon: Icon(Icons.arrow_back_ios,
                          color: AppColors.textColor,
                          size: 30,
                        ))
                  ),
                ),

                Positioned(
                  top: 20,
                  right: 20,
                  child: Container(
                      margin: EdgeInsets.all(20),
             //         padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.iconbackground,
                      borderRadius: BorderRadius.circular(10)
                    ),
                      child: IconButton(onPressed: (){},
                          icon: Icon(Icons.favorite_border_outlined,
                            color: AppColors.textColor,
                            size: 30,
                          ))
                  ),
                ),

                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Container(
                      margin: EdgeInsets.all(20),
                     // padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: AppColors.iconbackground,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.play_arrow,
                            size: 30,
                            color: AppColors.textColor,
                          ))
                  ),
                ),
              ],
            ),
            Text("Creamy Patsta Carbonara",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: AppColors.textColor
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.star,
                        color: AppColors.textColor,
                        size: 20,
                      ),
                      SizedBox(width: 3,),
                      Text("4.8",
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.textColor
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 2,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.watch_later_outlined,
                        color: AppColors.textColor,
                        size: 20,
                      ),
                      SizedBox(width: 3,),
                      Text("25 min",
                        style: TextStyle(
                            fontSize: 20,
                            color: AppColors.textColor
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 2,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.local_fire_department_outlined,
                        color: AppColors.textColor,
                        size: 20,
                      ),
                      SizedBox(width: 3,),
                      Text("650 cal",
                        style: TextStyle(
                            fontSize: 20,
                            color: AppColors.textColor
                        ),
                      )
                    ],
                  ),
                ),


              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Ingredients",
                    style: TextStyle(
                        fontSize: 25,
                        color: AppColors.textColor),),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.iconbackground,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.shopping_cart_checkout_rounded,
                          color: AppColors.textColor,),
                        Text("Add to List",
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.textColor
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.iconbackground,
                borderRadius: BorderRadius.circular(12),
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
                children: [
                  CustomIngredients(text: "400g spaghetti", icon: Icons.control_point_outlined),
                  SizedBox(height: size.height*0.02,),
                  CustomIngredients(text: "400g spaghetti", icon: Icons.control_point_outlined),
                  SizedBox(height: size.height*0.02,),
                  CustomIngredients(text: "400g spaghetti", icon: Icons.control_point_outlined),
                  SizedBox(height: size.height*0.02,),
                  CustomIngredients(text: "400g spaghetti", icon: Icons.control_point_outlined)

                ],
              ),
            ),
            Text("Preparation Steps",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textColor
              ),
            ),
            SizedBox(height: size.height*0.01,),
            CustomPreparationSteps(text: "Bring a large pot of salted water to boil and \n"
                " cook spaghetti according to package directions", num: "1"),
            SizedBox(height: size.height*0.01,),
            CustomPreparationSteps(text: "Bring a large pot of salted water to boil and \n"
                " cook spaghetti according to package directions", num: "2"),
            SizedBox(height: size.height*0.01,),

            CustomPreparationSteps(text: "Bring a large pot of salted water to boil and \n"
                " cook spaghetti according to package directions", num: "3"),






          ],
        ),
      ),

    );
  }
}
