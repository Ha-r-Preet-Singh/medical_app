import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/constants/colors.dart';
import 'package:medical_app/constants/spacer.dart';
import 'package:medical_app/screens/onboarding/verify_done.dart';
import 'package:medical_app/widgets/custom_Elevated_Button.dart';
import 'package:medical_app/widgets/custom_text.dart';
import 'package:pinput/pinput.dart';

class VerifyCode extends StatefulWidget {
  String verificationid;
  VerifyCode({super.key, required this.verificationid});

  @override
  State<VerifyCode> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final defalutPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: AppColors.mYMainColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.myBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    fText: "Enter the verify code",
                    fSize: 24.sp,
                    fWeight: FontWeight.bold,
                  ),
                  CustomText(
                    fText: "We just send you a verification code via phone ",
                    fColor: AppColors.myGreyColor,
                    fWeight: FontWeight.w600,
                  ),
                  CustomText(
                    fText: "+91 9265614292",
                    fColor: AppColors.myGreyColor,
                    fWeight: FontWeight.w700,
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                child: Pinput(
                  controller: otpController,
                  length: 6,
                  defaultPinTheme: defalutPinTheme,
                  focusedPinTheme: defalutPinTheme.copyWith(
                    decoration: defalutPinTheme.decoration!.copyWith(
                      border: Border.all(
                          color: AppColors.mYMainColor.withOpacity(0.1)),
                    ),
                  ),
                  onCompleted: (pin) => debugPrint(pin),
                ),
              ),
            ),
            mSpacer(
              mHeight: 13.h,
            ),
            Center(
              child: SizedBox(
                height: 40.h,
                width: double.infinity,
                child: CustomElevatedButton(
                    buttonElevation: 12,
                    onTap: () async {
                      try {
                        PhoneAuthCredential credential =
                            await PhoneAuthProvider.credential(
                                verificationId: widget.verificationid,
                                smsCode: otpController.text.toString());

                        FirebaseAuth.instance.signInWithCredential(credential).then((value) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VerifyDone(),
                              ));
                        });
                      } catch (ex) {
                        log(ex.toString() as num);
                      }

                    },
                    mChild: CustomText(
                      fText: "SUBMIT CODE",
                      fColor: AppColors.myBackgroundColor,
                    ),
                    buttonRadius: BorderRadius.circular(50),
                    buttonColor: AppColors.mYMainColor),
              ),
            ),
            mSpacer(
              mHeight: 50.h,
            ),
            Center(
                child: CustomText(
              fText: "The verify code will expire in 00.59 ",
              fColor: AppColors.myGreyColor,
              fWeight: FontWeight.w600,
            )),
            mSpacer(
              mHeight: 13.h,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: CustomText(
                  fText: "Resend Code",
                  fColor: AppColors.mYMainColor,
                  fWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
