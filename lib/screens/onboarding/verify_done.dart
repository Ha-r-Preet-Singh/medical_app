import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_app/constants/colors.dart';
import 'package:medical_app/constants/spacer.dart';
import 'package:medical_app/screens/bottom_bar.dart';
import 'package:medical_app/screens/bottom_bar_screens/home_screen.dart';
import 'package:medical_app/widgets/custom_Elevated_Button.dart';
import 'package:medical_app/widgets/custom_text.dart';

class VerifyDone extends StatelessWidget {
  const VerifyDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Lottie.asset("assets/lottie/done.json"),

            CustomText(
              fText: "Phone Number Verified",fSize: 24.sp,fWeight: FontWeight.bold,
            ),
            mSpacer(
              mHeight: 25.h,
            ),

            CustomText(fText: "Congratulation, your phone number ",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
            CustomText(fText: "has been verified. You can start using",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
            CustomText(fText: "the app",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
           Spacer(),

            Center(
              child: SizedBox(
                height: 40.h,
                width: double.infinity,
                child: CustomElevatedButton(
                    buttonElevation: 12,

                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar(),));
                    },
                    mChild: CustomText(fText: "CONTINUE",fColor: AppColors.myBackgroundColor,),
                    buttonRadius: BorderRadius.circular(50),
                    buttonColor: AppColors.mYMainColor),
              ),

            ),
            mSpacer(
              mHeight: 25.h,
            ),

          ],
        ),
      ),
    );
  }
}
