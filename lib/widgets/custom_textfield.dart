
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/constants/colors.dart';


class CustomTextField extends StatelessWidget {

  String hintTxt;
  IconData? suffIcon;
  Color? suffColor;
  IconData? prefixIcon;
  Color? prefixColor;
  Color? fillColor;
  TextEditingController? TextEditContoller;
  String? Function(String?) validate;
  Color? borderColor;
  BorderRadius? textFieldRadius;
  TextInputType? keyboardType;


   CustomTextField({
     this.keyboardType,
     this.prefixIcon,
     this.suffColor,
     this.prefixColor,
     this.fillColor,
   required this.hintTxt,
     this.suffIcon,
     required this.validate,
     this.TextEditContoller,
     this.borderColor,
     this.textFieldRadius,


  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,

      controller: TextEditContoller,
      decoration: InputDecoration(



        filled: true,
        fillColor: fillColor,
        hintText: hintTxt,


        prefixIcon: Icon(prefixIcon,color:prefixColor,),


        suffixIcon:Icon(suffIcon,color: suffColor,),
        // suffixIconColor:AppColors.greyColor ,

        focusedBorder: OutlineInputBorder(
          borderRadius: textFieldRadius!,
          borderSide: BorderSide(color:borderColor! ,width: 2),
        ),
        enabledBorder: OutlineInputBorder(

          borderRadius: textFieldRadius!,
          borderSide: BorderSide(color:borderColor!,width: 2),
        ),

      ),
        validator: validate,
    );
  }
}
