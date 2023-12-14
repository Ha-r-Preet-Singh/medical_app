import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/constants/colors.dart';
import 'package:medical_app/constants/spacer.dart';
import 'package:medical_app/widgets/custom_text.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({super.key});

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  List<Map<String, dynamic>> profile = [
    {
      "leading":Icon(Icons.book_outlined),
      "title": "Edit Profile",
      "trail":Icon(Icons.keyboard_arrow_right_rounded),

    },
    {
      "leading":Icon(Icons.menu_book),
      "title": "My orders",
      "trail":Icon(Icons.keyboard_arrow_right_rounded),

    },
    {
      "leading":Icon(Icons.access_time),
      "title": "Billing",
      "trail":Icon(Icons.keyboard_arrow_right_rounded),

    },
    {
      "leading":Icon(Icons.question_mark_outlined),
      "title": "Faq",
      "trail":Icon(Icons.keyboard_arrow_right_rounded),

    },


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: true,
        title: CustomText(fText: "My Profile",fWeight: FontWeight.bold,fSize: 18.sp,),

      ),
      backgroundColor: AppColors.myBackgroundColor,
      body: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 37,
                backgroundColor: AppColors.mYMainColor,
                child: CircleAvatar(
                    radius: 35,

                    backgroundColor: AppColors.myBackgroundColor,
                    backgroundImage: AssetImage(
                        "assets/images/profilepic.jpeg")),
              ),
              mSpacer(
                mWidth: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    fText: "Hi, Rahul Kanjariya",fSize: 18.sp,fWeight: FontWeight.bold,
                  ),
                  CustomText(
                    fText: "Welcome to Nikanth Medical Store",fSize: 10.sp,fWeight: FontWeight.bold,
                  ),

                ],
              ),
            ],
          ),
          SizedBox(
            height: 200.h,
            child: ListView.builder(
              itemCount: profile.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: profile[index]["leading"],

                      title: Text("${profile[index]["title"]}",style: TextStyle(fontWeight: FontWeight.bold),)  ,
                      trailing:  profile[index]["trail"],

                    ),
                    Divider(
                      indent: 52,
                    ),
                  ],
                );

              },),
          ),

        ],
      ),

    );
  }
}
