import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/constants/colors.dart';
import 'package:medical_app/constants/spacer.dart';
import 'package:medical_app/screens/onboarding/firebase/verify_code.dart';
import 'package:medical_app/widgets/custom_Elevated_Button.dart';
import 'package:medical_app/widgets/custom_container.dart';
import 'package:medical_app/widgets/custom_text.dart';
import 'package:medical_app/widgets/custom_textfield.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({super.key});

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Card(
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: CustomContainer(
                  cHeight: 70,
                  cWidth: 70,
                  cColor: AppColors.myBackgroundColor,
                  cRadius: BorderRadius.all(Radius.circular(50).w),
                  mChild: Icon(
                    Icons.local_hospital_outlined,
                    color: AppColors.mYMainColor,
                    size: 44,
                  ),
                ),
              ),
            ),
            mSpacer(),
            CustomText(
              fText: "Nikanth Medical",
              fColor: AppColors.myTextColor,
              fSize: 24.sp,
              fStyle: FontStyle.italic,
              fWeight: FontWeight.w700,
            ),
            mSpacer(
              mHeight: 53.h,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  fText: "Please Enter your Mobile Number",
                  fColor: AppColors.myGreyColor,
                ),
                CustomText(
                  fText: "to Login/Sign Up",
                  fColor: AppColors.myGreyColor,
                ),
                mSpacer(
                  mHeight: 28.h,
                ),
                Center(
                  child: SizedBox(
                    height: 55.h,
                    child: Card(
                      elevation: 12,
                      shadowColor: AppColors.myBackgroundColor,
                      color: AppColors.myBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20).w,
                      ),
                      child: CustomTextField(
                        keyboardType: TextInputType.number,
                        TextEditContoller: phoneController,
                        hintTxt: "Enter Your Mobile Number",
                        fillColor: AppColors.myBackgroundColor,
                        suffIcon: Icons.phone,
                        suffColor: AppColors.myGreyColor,
                        borderColor: AppColors.myTextColor,
                        textFieldRadius: BorderRadius.circular(20.w),
                        validate: (value) {},
                      ),
                    ),
                  ),
                ),
                mSpacer(
                  mHeight: 28.h,
                ),
                Center(
                  child: SizedBox(
                    height: 40.h,
                    width: double.infinity,
                    child: CustomElevatedButton(
                        buttonElevation: 12,
                        onTap: () async {
                          await FirebaseAuth.instance.verifyPhoneNumber(
                              verificationCompleted:
                                  (PhoneAuthCredential credential) {},
                              verificationFailed: (FirebaseAuthException ex) {},
                              codeSent:
                                  (String verificationId, int? resendtoken) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => VerifyCode(verificationId: verificationId,),
                                        ));
                                  },
                              codeAutoRetrievalTimeout:
                                  (String verificationId) {},
                              phoneNumber: phoneController.text.toString());

                        },
                        mChild: CustomText(
                          fText: "CONTINUE",
                          fColor: AppColors.myBackgroundColor,
                        ),
                        buttonRadius: BorderRadius.circular(50),
                        buttonColor: AppColors.mYMainColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
