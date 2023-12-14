import 'package:flutter/material.dart';




class CustomElevatedButton extends StatelessWidget {

  VoidCallback onTap;
  Widget mChild;
  BorderRadius buttonRadius;
  Color buttonColor;
  double? buttonElevation;
  // Color BorderSideColor;
  // double BorderSideWidth;

  CustomElevatedButton({
  required this.onTap,
    required this.mChild,
    required this.buttonRadius,
    required this.buttonColor,
    this.buttonElevation,
    // this.BorderSideColor,
    // this.BorderSideWidth,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      style: ElevatedButton.styleFrom(
        elevation: buttonElevation,
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: buttonRadius,
          side:const BorderSide(
            width: 0.6,
            color: Colors.transparent,

          ),

        ),
      ),
        onPressed: onTap,
        child: mChild,
    );
  }
}

