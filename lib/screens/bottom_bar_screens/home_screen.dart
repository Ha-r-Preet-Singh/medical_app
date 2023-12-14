

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/constants/colors.dart';
import 'package:medical_app/constants/spacer.dart';
import 'package:medical_app/screens/add_to_cart_screen/add_cart.dart';
import 'package:medical_app/screens/bottom_bar_screens/notification_screen.dart';
import 'package:medical_app/widgets/custom_container.dart';
import 'package:medical_app/widgets/custom_text.dart';
import 'package:medical_app/widgets/custom_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> categories = [
    {
      "name": "Dental",
      "color": Colors.pink,
    },
    {
      "name": "Wellness",
      "color": Colors.green,
    },
    {
      "name": "Homeo",
      "color": Colors.orange,
    },
    {
      "name": "Eye care",
      "color": Colors.blue,
    },
    {
      "name": "Lips",
      "color": Colors.red,
    },
    {
      "name": "Tooth",
      "color": Colors.yellow,
    },
    {
      "name": "Skin",
      "color": Colors.brown,
    },
    {
      "name": "Hair",
      "color": Colors.black,
    },
  ];
  List<Map<String, dynamic>> deals = [
    {
      "name": "Sugar Free Gold ",
      "subname": "Low Calories",
      "price":"Rs.56",

    },
    {
      "name": "Accu-check Active",
      "subname": "Test Strip",
      "price":"112",

    },
    {
      "name": "Accu-check Active",
      "subname": "Test Strip",
      "price":"112",

    },
    {
      "name": "Accu-check Active",
      "subname": "Test Strip",
      "price":"112",

    },
    {
      "name": "Accu-check Active",
      "subname": "Test Strip",
      "price":"112",

    },
    {
      "name": "Accu-check Active",
      "subname": "Test Strip",
      "price":"112",

    },
    {
      "name": "Accu-check Active",
      "subname": "Test Strip",
      "price":"112",

    },
    {
      "name": "Accu-check Active",
      "subname": "Test Strip",
      "price":"112",

    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0.h),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 180.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.mYMainColor,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20).w,
                        bottomLeft: Radius.circular(20).w),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 30.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                                radius: 25,
                                backgroundColor: AppColors.myBackgroundColor,
                                backgroundImage: AssetImage(
                                    "assets/images/profilepic.jpeg")),
                            Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Notification_screen(),));
                                  },
                                  child: Stack(
                                    children: [
                                      Icon(Icons.notifications_none_rounded,
                                          color: AppColors.myBackgroundColor),
                                      Positioned(
                                        left: 12,
                                        top: 3,
                                        child: Container(
                                          height: 7.h,
                                          width: 7.w,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color:
                                                    AppColors.myBackgroundColor),
                                            borderRadius:
                                                BorderRadius.circular(50).w,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                mSpacer(
                                  mWidth: 15.w,
                                ),
                                Icon(
                                  Icons.shopping_bag_outlined,
                                  color: AppColors.myBackgroundColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                        mSpacer(
                          mHeight: 10.h,
                        ),
                        CustomText(
                          fText: "Hi, Rahul",
                          fColor: AppColors.myBackgroundColor,
                          fWeight: FontWeight.bold,
                          fSize: 22.sp,
                        ),
                        CustomText(
                          fText: "Welcome to Nilkanth Medical Store",
                          fColor: AppColors.myBackgroundColor,
                          fWeight: FontWeight.w500,
                          fSize: 12.sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200, left: 20, right: 20),
              child: Card(
                elevation: 12,
                shadowColor: AppColors.myBackgroundColor,
                color: AppColors.myBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50).w,
                ),
                child: CustomTextField(


                  hintTxt: "Search Medicene & Healthcare products",
                  fillColor: AppColors.myBackgroundColor,
                  prefixIcon: Icons.search_rounded,

                  prefixColor: AppColors.myGreyColor,
                  borderColor: AppColors.myBackgroundColor,
                  textFieldRadius: BorderRadius.circular(50.w),
                  validate: (value) {},
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                topCategories(),
              ],
            ),
            poster(),
            mSpacer(
              mHeight: 25.h,
            ),
            deal(),
          ],
        ),
      ),
    );
  }

  Widget topCategories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: CustomText(
            fText: "Top Categories",
            fSize: 14.sp,
            fWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 120.h,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 12,
                shadowColor: AppColors.myBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50).w,
                ),
                child: CustomContainer(
                    cHeight: 120.h,
                    cWidth: 80.w,
                    cRadius: BorderRadius.circular(50).w,
                    cColor: AppColors.myBackgroundColor,
                    mChild: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomContainer(
                            cHeight: 60.h,
                            cWidth: 70.w,
                            cRadius: BorderRadius.circular(50).w,
                            cColor: categories[index]["color"],
                          ),
                        ),
                        CustomText(
                            fText: categories[index]["name"],
                            fWeight: FontWeight.w700),
                      ],
                    )),
              );
              ;
            },
          ),
        ),
        mSpacer(
          mHeight: 20.h,
        ),
      ],
    );
  }

  Widget poster() {
    return CustomContainer(
      cHeight: 150.h,
      cWidth: 340.w,
      cRadius: BorderRadius.circular(5).w,
      cColor: Colors.green.withOpacity(0.2),
      mChild: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(fText: "Save extra on",fWeight: FontWeight.bold,fSize: 20.sp,fColor: Colors.cyan,),
                  CustomText(fText: "every order",fWeight: FontWeight.bold,fSize: 20.sp,fColor: Colors.cyan,),
                  CustomText(fText: "Etiam mollis metus",fColor: AppColors.myTextColor,fWeight: FontWeight.w600,),
                  CustomText(fText: "non faucibus ",fColor: AppColors.myTextColor,fWeight: FontWeight.w600,),

                ],
              ),
              Image.asset("assets/images/instu.png",scale: 3,),

            ],
          ),
        ),
      ),
    );
  }
  Widget deal(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(fText: "Deals of the Day",fColor: AppColors.myTextColor,fWeight: FontWeight.w600,fSize: 14.sp,),
              CustomText(fText: "More",fColor: AppColors.mYMainColor,fWeight: FontWeight.w600,fSize: 14.sp,),

            ],
          ),
          mSpacer(
            mHeight: 20.h,
          ),
          SizedBox(
            height: 1000.h,
            child: GridView.builder(

              itemCount: deals.length,
              physics:NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 9/15,
                crossAxisSpacing: 5.w,
                mainAxisSpacing: 10.h,


              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddToCart(),));
                  },
                  child: Card(
                    elevation: 12,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10).w),
                    child: CustomContainer(
                      cRadius: BorderRadius.circular(10).w,
                      cHeight: 400.h,
                      cWidth: 100.w,
                      cColor: AppColors.myBackgroundColor,
                      mChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          CustomContainer(
                            cHeight: 130.h,
                            cWidth: 200.w,
                            cRadius: BorderRadius.circular(10).w,
                            cColor: AppColors.myGreyColor.withOpacity(0.3),
                            mChild: Center(child: Image.asset("assets/images/pack.webp")),

                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(fText: deals[index]["name"],fColor: AppColors.myTextColor,fWeight: FontWeight.w600,),
                                CustomText(fText: deals[index]["subname"],fColor: AppColors.myTextColor,fWeight: FontWeight.w600,),
                                CustomText(fText: deals[index]["price"],fColor: AppColors.myTextColor,fWeight: FontWeight.w600,fSize: 20.sp,),



                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomContainer(
                                cRadius: BorderRadius.only(topLeft: Radius.circular(20).w,bottomLeft: Radius.circular(20).w),
                                cHeight: 20.h,
                                cWidth: 50.w,
                                cColor: Colors.amber,
                                mChild: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star,color: AppColors.myBackgroundColor,size: 17,),
                                    CustomText(fText: "2",fColor: AppColors.myBackgroundColor,fWeight: FontWeight.w600,fSize: 16.sp,),
                                  ],
                                ),
                              ),
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),
                );
              },),
          ),
        ],
      ),
    );
  }
}
