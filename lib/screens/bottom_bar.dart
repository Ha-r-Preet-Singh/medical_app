import 'package:flutter/material.dart';
import 'package:medical_app/constants/colors.dart';
import 'package:medical_app/screens/bottom_bar_screens/home_screen.dart';
import 'package:medical_app/screens/bottom_bar_screens/notification_screen.dart';
import 'package:medical_app/screens/bottom_bar_screens/profile_screen.dart';
import 'package:medical_app/screens/bottom_bar_screens/shopping_cart_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var pageDestination = [
    HomeScreen(),
    Notification_screen(),
    Shopping_cart_screen(),
    Profile_Screen(),
  ];

  int mSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageDestination[mSelectedIndex],
      bottomNavigationBar: NavigationBar(

        surfaceTintColor: AppColors.myBackgroundColor,

        indicatorColor: AppColors.mYMainColor.withOpacity(0.1),
        backgroundColor: AppColors.myBackgroundColor,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        onDestinationSelected: (index){
          mSelectedIndex = index;
          setState(() {

          });
        },
        selectedIndex: mSelectedIndex,
          destinations: [

            NavigationDestination(icon: Icon(Icons.home_outlined,color: AppColors.mYMainColor,), label: ""),
            NavigationDestination(icon: Icon(Icons.notifications_none_rounded,color: AppColors.mYMainColor,), label: ""),
            NavigationDestination(icon: Icon(Icons.shopping_bag_outlined,color: AppColors.mYMainColor,), label: ""),
            NavigationDestination(icon: Icon(Icons.person_outline_rounded,color: AppColors.mYMainColor,), label: ""),
          ],
      ),
    );
  }
}
