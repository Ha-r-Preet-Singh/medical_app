import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/constants/colors.dart';
import 'package:medical_app/constants/spacer.dart';
import 'package:medical_app/widgets/custom_text.dart';

class Notification_screen extends StatefulWidget {
  const Notification_screen({super.key});

  @override
  State<Notification_screen> createState() => _Notification_screenState();
}

class _Notification_screenState extends State<Notification_screen> {
  List<Map<String, dynamic>> notification = [
    {
      "leading":Icon(Icons.add),
      "title": "we know that-for children AND adults-learning is most effective when it is",
      "subtitle":"Ang 12 ,2020 at 12.08 PM",

    },
    {
      "leading":Icon(Icons.shopping_bag_outlined),
      "title": "The future of professtional learning is immersive ,communal experenice for",
      "subtitle":"Ang 12 ,2020 at 12.08 PM",

    },
    {
      "leading":Icon(Icons.notifications_none_rounded),
      "title": "With this in mind ,Global Online Academy created the Blended Learning Design",
      "subtitle":"Ang 12 ,2020 at 12.08 PM",

    },
    {
      "leading":Icon(Icons.notifications_none_rounded),
      "title": "we know that-for children AND adults-learning is most effective when it is",
      "subtitle":"Ang 12 ,2020 at 12.08 PM",

    },
    {
      "leading":Icon(Icons.notifications_none_rounded),
      "title": "we know that-for children AND adults-learning is most effective when it is",
      "subtitle":"Ang 12 ,2020 at 12.08 PM",

    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.myBackgroundColor,

      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: CustomText(fText: "Notification",fWeight: FontWeight.bold,fSize: 18,),
        actions: [
          CustomText(fText: "Clear all",fColor: AppColors.mYMainColor,fWeight: FontWeight.w600,),
          mSpacer(
            mWidth: 15.w,
          ),
        ],

      ),
      body: ListView.builder(
        itemCount: notification.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: notification[index]["leading"],

                title: Text("${notification[index]["title"]}",style: TextStyle(fontWeight: FontWeight.bold),)  ,
                subtitle:  Text("${notification[index]["subtitle"]}",style: TextStyle(color: AppColors.myGreyColor,fontWeight: FontWeight.w500),),

              ),
              Divider(),
            ],
          );

      },),
    );
  }
}
