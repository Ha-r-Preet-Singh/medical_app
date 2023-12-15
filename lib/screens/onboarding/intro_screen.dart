

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_app/constants/colors.dart';
import 'package:medical_app/constants/spacer.dart';
import 'package:medical_app/screens/onboarding/phone_auth/login_signup_screen.dart';

import 'package:medical_app/widgets/custom_text.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.myBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:  CrossAxisAlignment.center,
          children: [
            mSpacer(
              mHeight: 53.h,
            ),

            Lottie.asset("assets/lottie/medical.json",height: 288.h),
          mSpacer(
            mHeight: 55.h
          ),
          CustomText(fText: "View and buy ",fWeight: FontWeight.bold,fSize: 18.sp,fColor: AppColors.myTextColor,),
            CustomText(fText: "Medicine online",fWeight: FontWeight.bold,fSize: 18.sp,fColor: AppColors.myTextColor,),
            mSpacer(),

            CustomText(fText: "Etiam mollis non purus",fColor: AppColors.myGreyColor,),
            CustomText(fText: "faucibus sollicitudin Pellentesque",fColor: AppColors.myGreyColor,),
            CustomText(fText: "saqittus mi.Inteqer",fColor: AppColors.myGreyColor,),
          Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: (){},
                    child: CustomText(fText: "Skip",fColor: AppColors.myGreyColor,),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginSignUpScreen(),));
                    },
                    child: CustomText(fText: "Next",fColor: AppColors.mYMainColor,fWeight: FontWeight.w800,),
                  ),

                ],

              ),
            ),
            mSpacer(
                mHeight: 15.h
            ),


          ],
        ),
      ),

    );
  }
}
