import 'package:flutter/material.dart';
import 'package:kitchenly/color/app_colors.dart';
import 'package:kitchenly/widget/Register/custom_button.dart';
import 'package:kitchenly/widget/home/tabs/add/custom_text_add.dart';
import 'package:kitchenly/widget/home/tabs/add/custom_text_field_add.dart';

class AddTab extends StatelessWidget {
  const AddTab({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: AppBar(
        backgroundColor: AppColors.appBackground,
        leading: Container(
          margin: EdgeInsets.only(left: 8),
          padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.textColor,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Icon(Icons.arrow_back_ios)),
        title: Text("Add Recipe",style: TextStyle(
          fontSize: 30,
          color: AppColors.textColor
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(50),
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.iconbackground,
                borderRadius: BorderRadius.circular(18)
              ),
              child: Column(
                children: [
                  Icon(Icons.image_outlined,
                  color: AppColors.iconbarColor,size: 50,),
                  Text("Upload Recipe Image",style: TextStyle(
                    fontSize: 22,
                    color: AppColors.iconbarColor
                  ),)
                ],
              ),
            ),
            Text("Recipe Name",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.textColor,
            ),),
            Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.iconbackground,
                    hintText: "Enter recipe name",
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
              ),
            CustomTextAdd(text: "Ingredients"),
            CustomTextFieldAdd(hinttext: "List ingredients(one per line"),
            CustomTextAdd(text: "Preparation Steps"),
            CustomTextFieldAdd(hinttext: "Describe the steps to prepare this recipe"),
            Text("Video Tutorial Link (Optional)",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.textColor,
            ),),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.iconbackground,
                    hintText: "http://",
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
            ),
            CustomButton(textButton: "Publish Recipe", icon: Icons.file_upload_outlined,)






          ],
        ),
      ),
    );
  }
}
