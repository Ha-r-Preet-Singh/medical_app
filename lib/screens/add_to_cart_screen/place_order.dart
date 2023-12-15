import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/constants/colors.dart';
import 'package:medical_app/constants/spacer.dart';
import 'package:medical_app/screens/add_to_cart_screen/continue_order.dart';
import 'package:medical_app/widgets/custom_text.dart';

class PlaceOrder extends StatefulWidget {


  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {


  List<Map<String, dynamic>> address = [
    {
      "title": "Home",
      "number":"9813498332",
      "address":"1786 Wheeler Bridge",
    },
    {
      "title": "Office",
      "number": "9877772211",
      "address":"1786 w Dallas st underfield",
    },

  ];
  @override
  Widget build(BuildContext context) {
    int selectedOption = 1;

    return Scaffold(

      appBar: AppBar(
        title: CustomText(fText: "Checkout",fWeight: FontWeight.bold,fSize: 18,),

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(fText: "2 Items in your cart",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomText(fText: "Total",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
                    CustomText(fText: "Rs.185.00",fWeight: FontWeight.bold,fSize: 18,),

                  ],
                ),
              ],
            ),
            CustomText(fText: "Delivery Address",fWeight: FontWeight.bold,fSize: 18,),
            mSpacer(
              mHeight: 10.h,
            ),
        Container(
          height: 120.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10).w,
            color: AppColors.myBackgroundColor,
            border: Border.all(color: AppColors.myGreyColor.withOpacity(0.3)),
            

          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value!;
                              print("Button value: $value");
                            });
                          },
                        ),
                        CustomText(fText: "Home",fWeight: FontWeight.bold,fSize: 17,),
                      ],
                    ),


                    Icon(Icons.edit,color: AppColors.myGreyColor,),
                  ],
                ),
                CustomText(fText: "(205) 555-024",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
                CustomText(fText: "1786 Wheeler Bridge",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
              ],
            ),
          ),

        ),
            mSpacer(
              mHeight: 10.h,
            ),
            Container(
              height:  120.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10).w,
                color: AppColors.myBackgroundColor,
                border: Border.all(color: AppColors.myGreyColor.withOpacity(0.3)),


              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value!;
                                  print("Button value: $value");
                                });
                              },
                            ),
                            CustomText(fText: "Office",fWeight: FontWeight.bold,fSize: 17,),
                          ],
                        ),


                        Icon(Icons.edit,color: AppColors.myGreyColor,),
                      ],
                    ),

                    CustomText(fText: "(205) 555-024",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
                    CustomText(fText: "1786 Wheeler Bridge",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
                  ],
                ),
              ),

            ),
            mSpacer(
              mHeight: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.add_box_outlined,color: AppColors.mYMainColor,size: 19,),
                mSpacer(
                  mWidth: 4.w,
                ),
                CustomText(fText: "Add Address",fColor: AppColors.mYMainColor,fWeight: FontWeight.w600,),
              ],
            ),
            mSpacer(
              mHeight: 60.h,
            ),

            CustomText(fText: "Payment Method",fWeight: FontWeight.bold,fSize: 18,),
            mSpacer(
              mHeight: 10.h,
            ),
            Container(
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10).w,
                color: AppColors.myBackgroundColor,
                border: Border.all(color: AppColors.myGreyColor.withOpacity(0.3)),


              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child:  Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(fText: "Cash on Delivery",fWeight: FontWeight.bold,fSize: 17,),
                    Radio(
                      value: 3,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value!;
                          print("Button value: $value");
                        });
                      },
                    ),
                  ],
                ),
              ),

            ),

          ],
        ),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => ContinueOrder(),));
            },
            child: CustomText(fText: "Pay Now",fColor: AppColors.myBackgroundColor,fWeight: FontWeight.bold,),

          ),
        ),
      ),



    );

  }
}
