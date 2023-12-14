import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_app/constants/colors.dart';
import 'package:medical_app/screens/bottom_bar.dart';
import 'package:medical_app/screens/bottom_bar_screens/home_screen.dart';
import 'package:medical_app/widgets/custom_text.dart';

class ContinueOrder extends StatelessWidget {
  const ContinueOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Lottie.asset("assets/lottie/done.json"),
          CustomText(fText: "Thank You",fWeight: FontWeight.w900,fSize: 22.sp,),
          CustomText(fText: "Your Order will be delivered with invoice ",fWeight: FontWeight.w600,),
          RichText(text: TextSpan(
            text: "#9ds69hs",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w900,color: AppColors.myTextColor),
            children: <TextSpan>[
              TextSpan(
                text: " You can track the delivery in the ",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500)
              ),

            ],
          )),
          CustomText(fText: "in the order section. ",fWeight: FontWeight.w600,),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          height: 30.h,
          width: double.infinity,
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50).w,
            ),
            backgroundColor:  AppColors.mYMainColor,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar(),));
            },
            child: CustomText(fText: "Continue Order",fColor: AppColors.myBackgroundColor,fWeight: FontWeight.bold,),

          ),
        ),
      ),

    );
  }
}
