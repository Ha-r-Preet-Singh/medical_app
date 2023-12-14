



import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  String fText;
  double? fSize;
  String? fFamily;
  FontWeight? fWeight;
  Color? fColor ;
  TextDecoration? underText;
  FontStyle? fStyle;



  CustomText({super.key,
    required this.fText,
    this.fSize,
    this.fFamily,
    this.fWeight,
    this.fColor ,
    this.underText,
    this.fStyle,



  });

  @override
  Widget build(BuildContext context) {
    return Text(
      fText,
      style: TextStyle(
        fontStyle: fStyle,
        fontSize: fSize,
        fontFamily: fFamily,
        fontWeight: fWeight,
        color: fColor,

        decoration: underText,

        // decorationColor: AppColors.hintextColor,



      ),

    );
  }
}
