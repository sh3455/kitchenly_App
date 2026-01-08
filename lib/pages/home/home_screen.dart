import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kitchenly/pages/home/tabs/add/add_tab.dart';
import 'package:kitchenly/pages/home/tabs/home/home_tab.dart';
import 'package:kitchenly/pages/home/tabs/profile/profile_tab.dart';
import 'package:kitchenly/pages/home/tabs/weekly/weekly_tab.dart';
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
  int selectIndex =0;
  List<Widget> tabs =[
    HomeTab(),
    AddTab(),
    WeeklyTab(),
    ProfileTab(),
  ];


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: tabs[selectIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Transform.translate(
        offset: const Offset(0, 20),
        child: FloatingActionButton(
          backgroundColor: AppColors.textColor,
          onPressed: () {
            print("Camera Clicked");
          },
          child: Icon(
            Icons.camera_alt,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: AppColors.iconbackground,
        ),
        child:BottomNavigationBar(
          selectedItemColor: AppColors.textColor,
            unselectedItemColor: AppColors.iconbarColor,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            currentIndex: selectIndex,
            onTap: (index) {
              selectIndex = index;
              setState(() {
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: builtItemBottomBar(index: 1, icon: Icons.home),
                  label: "Home"
              ),
              BottomNavigationBarItem(
                  icon: builtItemBottomBar(index: 2, icon: Icons.add_circle),
                  label: "Add"
              ),

              BottomNavigationBarItem(
                icon: SizedBox(width: size.width*0.1),
                label: "",
              ),
              BottomNavigationBarItem(
                  icon: builtItemBottomBar(index: 3, icon: Icons.calendar_month),
                  label: "Weekly"
              ),
              BottomNavigationBarItem(
                  icon: builtItemBottomBar(index: 4, icon: Icons.person),
                  label: "Profile"
              ),


            ]),


      ),



    );

  }
  Widget  builtItemBottomBar({required int index, required IconData icon}){
    return selectIndex == index ?
    Container(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(66)
        ),
        child: Icon(icon,size: 30,))
        :Icon(icon);
  }

}
