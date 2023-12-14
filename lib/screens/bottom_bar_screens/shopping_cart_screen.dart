import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_app/constants/colors.dart';
import 'package:medical_app/widgets/custom_text.dart';

class Shopping_cart_screen extends StatefulWidget {
  const Shopping_cart_screen({super.key});

  @override
  State<Shopping_cart_screen> createState() => _Shopping_cart_screenState();
}

class _Shopping_cart_screenState extends State<Shopping_cart_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.myBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/lottie/shooping.json"),
            CustomText(
              fText: "Woops",
              fSize: 34.sp,
              fWeight: FontWeight.bold,
            ),
            CustomText(fText: "Your cart is Empty!",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
          ],
        ),
      ),
    );
  }
}
