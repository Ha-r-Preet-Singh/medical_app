import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/constants/colors.dart';
import 'package:medical_app/constants/spacer.dart';
import 'package:medical_app/screens/onboarding/intro_screen.dart';
import 'package:medical_app/widgets/custom_container.dart';
import 'package:medical_app/widgets/custom_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => IntroScreen(),)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mYMainColor,


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomContainer(
              cHeight: 70,
              cWidth: 70,
              cColor: AppColors.myBackgroundColor,
              cRadius: BorderRadius.all(Radius.circular(50).w),
              mChild: Icon(Icons.local_hospital_outlined,color: AppColors.mYMainColor,size: 44,),
            ),
            mSpacer(),
            CustomText(fText: "Nikanth Medical",fColor: AppColors.myBackgroundColor,fSize: 16.sp,fStyle: FontStyle.italic,fWeight: FontWeight.w100,),

          ],
        ),
      ),

    );
  }
}
