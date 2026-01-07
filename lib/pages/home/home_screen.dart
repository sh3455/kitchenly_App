import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../color/app_colors.dart';
import '../../widget/Register/custom_text_field.dart';
import '../../widget/home/custom_categories_name.dart';
import '../../widget/recipes/custom_ai_recipes.dart';


class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});
  static String  routeName ="HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex =0;
  final List<Widget> screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: AppBar(
        backgroundColor: AppColors.appBackground,
        title:  CustomTextField(hinttext: "Search Recipes", icon: Icons.search),
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.iconbackground,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color:AppColors.iconbackground.withOpacity(0.15),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
              child: Icon(Icons.favorite_border_outlined,
                size: 30,
                color: AppColors.textColor,)),
          SizedBox(width: size.width*0.05),
          Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.iconbackground,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color:AppColors.iconbackground.withOpacity(0.15),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Icon(Icons.shopping_cart_checkout_rounded,
                size: 30,
                color: AppColors.textColor,)),


        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomCategoriesName(text: "Quick"),
                    SizedBox(width: size.width*0.02,),
                    CustomCategoriesName(text: "Budget"),
                    SizedBox(width: size.width*0.02,),
                    CustomCategoriesName(text: "Diet"),
                    SizedBox(width: size.width*0.02,),
                    CustomCategoriesName(text: "Desserts"),
                    SizedBox(width: size.width*0.02,),
                    CustomCategoriesName(text: "Protein"),
                    SizedBox(width: size.width*0.02,),
                    CustomCategoriesName(text: "Snacks"),
                    SizedBox(width: size.width*0.02,),
                  ],
                ),
              ),
              SizedBox(height: size.height*0.02,),
              Container(
                alignment: Alignment.topLeft,
                child: Text("AI Suggested For You",
                  style: TextStyle(
                    fontSize: 25,
                    color: AppColors.textColor,

                  ),),
              ),
              CarouselSlider.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex){
                    return CustomAiRecipes(
                        title: "Creamy Pasta carbona",
                        imagepath: "assets/images/recipe.jpg",
                        hours: "25 Min", evaluation: "5");
                    ;
                  },
                  options: CarouselOptions(
                      height:size.height*0.5,
                    viewportFraction: 0.9,
                    enlargeCenterPage: true,
                    autoPlay: true,
                  ) ,  ),
              Container(
                alignment: Alignment.topLeft,
                child: Text("Trending Recipes",style: TextStyle(
                  fontSize: 25,
                  color: AppColors.textColor,
                ),),
              ),
              CarouselSlider.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex){
                  return CustomAiRecipes(
                      title: "Creamy Pasta carbona",
                      imagepath: "assets/images/recipe.jpg",
                      hours: "25 Min", evaluation: "5");
                  ;
                },
                options: CarouselOptions(
                  height:size.height*0.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  autoPlay: true,
                ) ,  ),







            ],
          ),
        ),
      ),



    );

  }
}
