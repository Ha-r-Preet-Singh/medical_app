import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/constants/colors.dart';
import 'package:medical_app/constants/spacer.dart';
import 'package:medical_app/screens/add_to_cart_screen/your_cart.dart';
import 'package:medical_app/widgets/custom_Elevated_Button.dart';
import 'package:medical_app/widgets/custom_container.dart';
import 'package:medical_app/widgets/custom_text.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Icon(Icons.notifications_none_rounded,
                      color: AppColors.myTextColor),
                  Positioned(
                    left: 12,
                    top: 3,
                    child: Container(
                      height: 7.h,
                      width: 7.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color:
                            AppColors.myTextColor),
                        borderRadius:
                        BorderRadius.circular(50).w,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              mSpacer(
                mWidth: 15.w,
              ),
              Icon(
                Icons.shopping_bag_outlined,
                color: AppColors.myTextColor,
              ),
              mSpacer(
                mWidth: 15.w,
              ),
            ],
          ),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                fText: "Sugar Free Gold Low Calories",
                fColor: AppColors.myTextColor,
                fWeight: FontWeight.bold,
                fSize: 17.sp,
              ),
              CustomText(fText: "Etiam mollis metus non purus",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
              mSpacer(
                mHeight: 15.h,
              ),
              CustomContainer(
                cHeight: 130.h,
                cWidth: 400.w,
                cRadius: BorderRadius.circular(10).w,
                cColor: AppColors.myGreyColor.withOpacity(0.3),
                mChild: Center(child: Image.asset("assets/images/pack.webp")),

              ),
              mSpacer(
                mHeight: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomText(
                            fText: "Rs.99",
                            fColor: AppColors.myGreyColor,
                            fWeight: FontWeight.bold,
                            fSize: 17.sp,
                            underText: TextDecoration.lineThrough,
                          ),
                          mSpacer(
                            mWidth: 3.w,
                          ),
                          CustomText(
                            fText: "Rs.56",
                            fColor: AppColors.myTextColor,
                            fWeight: FontWeight.bold,
                            fSize: 17.sp,
                          ),
                        ],
                      ),
                      CustomText(fText: "Etiam mollis metus non purus",fColor: AppColors.myTextColor,fWeight: FontWeight.w600,),
                    ],
                  ),
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
                mHeight: 10.h,
              ),
              Divider(),
              mSpacer(
                mHeight: 10.h,
              ),
              CustomText(
                fText: "Package size",
                fColor: AppColors.myTextColor,
                fWeight: FontWeight.bold,
                fSize: 14.sp,
              ),
              mSpacer(
                mHeight: 10.h,
              ),
              Row(
                children: [
                  CustomContainer(
                    cHeight: 60.h,
                    cWidth: 70.w,
                    cRadius: BorderRadius.circular(10).w,

                    cColor: Colors.orangeAccent.withOpacity(.2),
                    mChild:Center(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(fText: "Rs.106",fWeight: FontWeight.w800,fColor: Colors.orangeAccent,),
                          CustomText(fText: "500 pelets",fWeight: FontWeight.w800,fColor: Colors.orangeAccent,),
                        ],
                      ),
                    ),

                  ),
                  mSpacer(
                    mWidth: 8.w,
                  ),
                  CustomContainer(
                    cHeight: 60.h,
                    cWidth: 70.w,
                    cRadius: BorderRadius.circular(10).w,

                    cColor: AppColors.myGreyColor.withOpacity(.3),
                    mChild:Center(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(fText: "Rs.166",fWeight: FontWeight.w800,fColor: AppColors.myTextColor,),
                          CustomText(fText: "500 pelets",fWeight: FontWeight.w800,fColor:AppColors.myTextColor,),
                        ],
                      ),
                    ),

                  ),
                  mSpacer(
                    mWidth: 8.w,
                  ),
                  CustomContainer(
                    cHeight: 60.h,
                    cWidth: 70.w,
                    cRadius: BorderRadius.circular(10).w,

                    cColor: AppColors.myGreyColor.withOpacity(.3),
                    mChild:Center(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(fText: "Rs.252",fWeight: FontWeight.w800,fColor: AppColors.myTextColor,),
                          CustomText(fText: "500 pelets",fWeight: FontWeight.w800,fColor:AppColors.myTextColor,),
                        ],
                      ),
                    ),

                  ),
                ],
              ),
              mSpacer(
                mHeight: 10.h,
              ),
              CustomText(
                fText: "Product Details",
                fColor: AppColors.myTextColor,
                fWeight: FontWeight.bold,
                fSize: 14.sp,
              ),
              mSpacer(
                mHeight: 6.h,
              ),
              CustomText(fText: "dhkjasdhka jdaadkj asjad jkadadk  kinnbnka adja adada sda sdad adasda adad adad adad adadcsdf ffswww qwfvd h hrhth fgfg bfv dfer y yu u rgdfd kjsdd biiejefnb bjfjfiiii jnndbhfdbnfjdn djkkfdfnjnf skjdsdnakjdnsds edad sdfdsd sdsd sdsdsds  sds sdsd svfvfbdbt ed",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
              mSpacer(
                mHeight: 6.h,
              ),
              CustomText(
                fText: "Ingredients",
                fColor: AppColors.myTextColor,
                fWeight: FontWeight.bold,
                fSize: 14.sp,
              ),
              mSpacer(
                mHeight: 6.h,
              ),
              CustomText(fText: "dhkjasdhka jdaadkj asjad jkadadk  kinnbnka adja adada sda sdad adasda adad adad adad adadcsdf ffswww qwfvd h hrhth fgfg bfv dfer y yu u rgdfd kjsdd biiejefnb bjfjfiiii jnndbhfdbnfjdn djkkfdfnjnf skjdsdnakjdnsds edad sdfdsd sdsd sdsdsds  sds sdsd svfvfbdbt ed",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
              mSpacer(
                mHeight: 6.h,
              ),
              Row(
                children: [
                  CustomText(
                    fText: "Expiry Date",
                    fColor: AppColors.myTextColor,
                    fWeight: FontWeight.bold,
                    fSize: 14.sp,
                  ),
                  mSpacer(
                    mWidth: 8.w,
                  ),
                  CustomText(fText: "25/12/2023",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
                ],
              ),
              mSpacer(
                mHeight: 1.h,
              ),
              Row(
                children: [
                  CustomText(
                    fText: "Brand Name",
                    fColor: AppColors.myTextColor,
                    fWeight: FontWeight.bold,
                    fSize: 14.sp,
                  ),
                  mSpacer(
                    mWidth: 8.w,
                  ),
                  CustomText(fText: "Something",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
                ],
              ),
              mSpacer(
                mHeight: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomText(
                            fText: "4.4",
                            fColor: AppColors.myTextColor,
                            fWeight: FontWeight.bold,
                            fSize: 27.sp,
                          ),
                          Icon(Icons.star,color: Colors.orangeAccent,),
                        ],
                      ),
                      CustomText(fText: "923 Rating",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
                      CustomText(fText: "and 257 Reviews",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomText(fText: "4",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
                          Icon(Icons.star,color: Colors.orangeAccent,size: 12,),
                          mSpacer(
                            mWidth: 5.w,
                          ),
                          Stack(
                            children: [
                              CustomContainer(
                                cHeight: 3.h,
                                cWidth: 80.w,
                                cColor: AppColors.myGreyColor.withOpacity(.2),
                                cRadius: BorderRadius.circular(50).w,
                              ),
                              CustomContainer(
                                cHeight: 3.h,
                                cWidth: 57.w,
                                cColor: AppColors.mYMainColor,
                                cRadius: BorderRadius.circular(50).w,
                              ),

                            ],
                          ),
                          mSpacer(
                            mWidth: 5.w,
                          ),
                          CustomText(fText: "67%",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),

                        ],
                      ),
                      Row(
                        children: [
                          CustomText(fText: "4",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
                          Icon(Icons.star,color: Colors.orangeAccent,size: 12,),
                          mSpacer(
                            mWidth: 5.w,
                          ),
                          Stack(
                            children: [
                              CustomContainer(
                                cHeight: 3.h,
                                cWidth: 80.w,
                                cColor: AppColors.myGreyColor.withOpacity(.2),
                                cRadius: BorderRadius.circular(50).w,
                              ),
                              CustomContainer(
                                cHeight: 3.h,
                                cWidth: 17.w,
                                cColor: AppColors.mYMainColor,
                                cRadius: BorderRadius.circular(50).w,
                              ),

                            ],
                          ),
                          mSpacer(
                            mWidth: 5.w,
                          ),
                          CustomText(fText: "20%",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),

                        ],
                      ),
                      Row(
                        children: [
                          CustomText(fText: "3",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
                          Icon(Icons.star,color: Colors.orangeAccent,size: 12,),
                          mSpacer(
                            mWidth: 5.w,
                          ),
                          Stack(
                            children: [
                              CustomContainer(
                                cHeight: 3.h,
                                cWidth: 80.w,
                                cColor: AppColors.myGreyColor.withOpacity(.2),
                                cRadius: BorderRadius.circular(50).w,
                              ),
                              CustomContainer(
                                cHeight: 3.h,
                                cWidth: 7.w,
                                cColor: AppColors.mYMainColor,
                                cRadius: BorderRadius.circular(50).w,
                              ),

                            ],
                          ),
                          mSpacer(
                            mWidth: 5.w,
                          ),
                          CustomText(fText: "7%",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),

                        ],
                      ),
                      Row(
                        children: [
                          CustomText(fText: "2",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
                          Icon(Icons.star,color: Colors.orangeAccent,size: 12,),
                          mSpacer(
                            mWidth: 5.w,
                          ),
                          Stack(
                            children: [
                              CustomContainer(
                                cHeight: 3.h,
                                cWidth: 80.w,
                                cColor: AppColors.myGreyColor.withOpacity(.2),
                                cRadius: BorderRadius.circular(50).w,
                              ),
                              CustomContainer(
                                cHeight: 3.h,
                                cWidth: 0.w,
                                cColor: AppColors.mYMainColor,
                                cRadius: BorderRadius.circular(50).w,
                              ),

                            ],
                          ),
                          mSpacer(
                            mWidth: 5.w,
                          ),
                          CustomText(fText: "0%",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),

                        ],
                      ),
                      Row(
                        children: [
                          CustomText(fText: "1",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
                          Icon(Icons.star,color: Colors.orangeAccent,size: 12,),
                          mSpacer(
                            mWidth: 5.w,
                          ),
                          Stack(
                            children: [
                              CustomContainer(
                                cHeight: 3.h,
                                cWidth: 80.w,
                                cColor: AppColors.myGreyColor.withOpacity(.2),
                                cRadius: BorderRadius.circular(50).w,
                              ),
                              CustomContainer(
                                cHeight: 3.h,
                                cWidth: 2.w,
                                cColor: AppColors.mYMainColor,
                                cRadius: BorderRadius.circular(50).w,
                              ),

                            ],
                          ),
                          mSpacer(
                            mWidth: 5.w,
                          ),
                          CustomText(fText: "2%",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),

                        ],
                      ),
                    ],
                  ),

                ],
              ),
              mSpacer(
                mHeight: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.orangeAccent,size: 12,),
                      mSpacer(
                        mWidth: 3.w,
                      ),
                      CustomText(fText: "4.2",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),


                    ],

                  ),
                  CustomText(fText: "05-oct-2023",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),

                ],
              ),
              CustomText(
                fText: "Erric Hoffman",
                fColor: AppColors.myTextColor,
                fWeight: FontWeight.bold,
                fSize: 14.sp,
              ),
              CustomText(fText: "dhkjasdhka jdaadkj asjad jkadadk  kinnbnka adja adada sda sdad adasda adad adad adad adadcsdf ffswww qwfvd h hrhth fgfg bfv dfer y yu u rgdfd kjsdd biiejefnb bjfjfiiii jnndbhfdbnfjdn djkkfdfnjnf skjdsdnakjdnsds edad sdfdsd sdsd sdsdsds  sds sdsd svfvfbdbt ed",fColor: AppColors.myGreyColor,fWeight: FontWeight.w600,),
              mSpacer(
                mHeight: 50.h,
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => YourCart(),));
            },
            child: CustomText(fText: "GO TO CART",fColor: AppColors.myBackgroundColor,fWeight: FontWeight.bold,),

          ),
        ),
      ),


    );
  }
}
