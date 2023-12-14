import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/constants/colors.dart';
import 'package:medical_app/constants/spacer.dart';
import 'package:medical_app/screens/add_to_cart_screen/place_order.dart';
import 'package:medical_app/widgets/custom_container.dart';
import 'package:medical_app/widgets/custom_text.dart';

class YourCart extends StatefulWidget {
  const YourCart({super.key});

  @override
  State<YourCart> createState() => _YourCartState();
}

class _YourCartState extends State<YourCart> {
  List<Map<String, dynamic>> sugar = [
    {
      "name": "Sugar Free Gold",
      "subname":"bootle of 500 pellets",
      "price":"Rs.56",
    },
    {
      "name": "Sugar Free Gold",
      "subname":"bootle of 500 pellets",
      "price":"Rs.56",
    },

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: CustomText(fText: "Your Cart",fWeight: FontWeight.bold,fSize: 18,),
        
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(fText: "2 Items in your cart",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
                  Row(
                    children: [
                      Icon(Icons.add_box_outlined,color: AppColors.mYMainColor,size: 19,),
                      mSpacer(
                        mWidth: 4.w,
                      ),
                      CustomText(fText: "Add to cart",fColor: AppColors.mYMainColor,fWeight: FontWeight.w600,),
                    ],
                  ),
                ],
              ),
              mSpacer(
                mHeight: 15.h,
              ),
              SizedBox(
                height: 300.h,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: sugar.length,

                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 12,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10).w,
                      ),

                      shadowColor: Colors.transparent,
                      child: CustomContainer(
                        cHeight: 100.h,
                        cWidth: 300.w,
                        cColor: AppColors.myBackgroundColor,
                        cRadius: BorderRadius.circular(10).w,
                        mChild: Center(
                          child: Row(
                            children: [
                              CustomContainer(
                                cHeight: 100.h,
                                cWidth: 100.w,
                                cRadius: BorderRadius.only(topLeft: Radius.circular(10).w,bottomLeft: Radius.circular(10).w),
                                cColor: AppColors.myGreyColor.withOpacity(0.3),
                                mChild: Center(child:  Image.asset("assets/images/pack.webp")),

                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            CustomText(
                                              fText: sugar[index]["name"],
                                              fColor: AppColors.myTextColor,
                                              fWeight: FontWeight.bold,
                                              fSize: 14.sp,
                                            ),
                                            CustomText(fText: sugar[index]["subname"],fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),

                                          ],
                                        ),
                                        mSpacer(
                                          mWidth: 50.w,
                                        ),
                                        Container(
                                          height: 30.h,
                                          width: 35.w,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: AppColors.myBackgroundColor,
                                            border: Border.all(color: AppColors.myGreyColor.withOpacity(0.2),width: 2),
                                          ),
                                          child: Center(
                                            child: Icon(Icons.close,color:AppColors.myGreyColor.withOpacity(0.8) ,),
                                          ),
                                        ),



                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomText(
                                          fText: sugar[index]["price"],
                                          fColor: AppColors.myTextColor,
                                          fWeight: FontWeight.bold,
                                          fSize: 18.sp,
                                        ),


                                        mSpacer(
                                          mWidth: 30.w,
                                        ),

                                        CustomContainer(
                                          cHeight: 30.h,
                                          cWidth: 100.h,
                                          cRadius: BorderRadius.circular(50).w,
                                          cColor: AppColors.myGreyColor.withOpacity(0.2),
                                          mChild:  Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomContainer(
                                                cHeight: 30.h,
                                                cWidth: 35.w,
                                                cRadius: BorderRadius.circular(50).w,
                                                cColor: AppColors.mYMainColor.withOpacity(.2),
                                                mChild: Center(child: Icon(Icons.remove)),
                                              ),
                                              CustomText(fText: "1",fWeight: FontWeight.bold,fSize: 20,),
                                              CustomContainer(
                                                cHeight: 30.h,
                                                cWidth: 35.w,
                                                cRadius: BorderRadius.circular(50).w,
                                                cColor: AppColors.mYMainColor,
                                                mChild: Center(child: Icon(Icons.add,color: AppColors.myBackgroundColor,)),
                                              ),
                                            ],
                                          ),

                                        ),

                                      ],
                                    ),




                                  ],
                                ),
                              ),






                            ],
                          ),
                        ),
                      ),
                    );

                },),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(fText: "Payment Summery",fWeight: FontWeight.bold,fSize: 18,),
                  mSpacer(
                    mHeight: 10.h,
                  ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     CustomText(fText: "Order Total"),
                     CustomText(fText: "228.80",fWeight: FontWeight.bold,),
                   ],
                 ),
                  mSpacer(
                    mHeight: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(fText: "Items Discount"),
                      CustomText(fText: "-28.80",fWeight: FontWeight.bold,),
                    ],
                  ),
                  mSpacer(
                    mHeight: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(fText: "Coupon Discount"),
                      CustomText(fText: "-15.80",fWeight: FontWeight.bold,),
                    ],
                  ),
                  mSpacer(
                    mHeight: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(fText: "Shopping"),
                      CustomText(fText: "Free",fWeight: FontWeight.bold,),
                    ],
                  ),
                  mSpacer(
                    mHeight: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(fText: "Total",fWeight: FontWeight.bold,),
                      CustomText(fText: "Rs.185.00",fWeight: FontWeight.bold,),
                    ],
                  ),


                ],
              ),

             
            ],
          ),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => PlaceOrder(),));
            },
            child: CustomText(fText: "Place Order",fColor: AppColors.myBackgroundColor,fWeight: FontWeight.bold,),

          ),
        ),
      ),



    );
  }

  
}
