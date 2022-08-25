import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localization/translation/locale_key.g.dart';

import '../controlers/shade_prefrence.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String dropdownvalue = 'Item 1';

    var items =[
      'Urdu',
      'English'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(LocaleKeys.Home.tr(),style: TextStyle(
          color: Colors.black,
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 10.sp,right: 10.sp),
        children: [
          SizedBox(
            height: 30.sp,
          ),
          Container(
            height: 100.h,
            margin: EdgeInsets.only(right: AppShadePrefrence.isEnglish==true?10.sp:10,),
            child: Row(
              children: [
                Expanded(child: Container(
                  margin: EdgeInsets.only(right: AppShadePrefrence.isEnglish==true?10.sp:0,left: 10.sp),
                  height: 100.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.16),
                        offset: Offset(0, 3.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child:Column(
                    children: [
                      Expanded(
                        flex:2,
                        child:  Image.asset('assets/pic/pic7.png'),),
                      Expanded(
                        child: Text(LocaleKeys.Make_Bookings.tr(),style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),),
                      )
                    ],
                  )
                ),),
                Expanded(child: Container(
                  margin: EdgeInsets.only(left: 10.sp),
                  height: 100.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.16),
                        offset: Offset(0, 3.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.asset('assets/pic/pic4.png'),),
                      Expanded(child: Text(LocaleKeys.Make_Delivery.tr(),style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),))
                    ],
                  ),
                )),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(LocaleKeys.Booked_Rides.tr(),style: TextStyle(
            color: Colors.grey,
            fontSize: 20.sp,
          ),),
          SizedBox(
            height: 20.sp,
          ),
          Container(
            padding: EdgeInsets.only(left: 18.sp,right: 18.sp),
            height: 156.h,
            width: 344.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.16),
                  offset: Offset(0, 3.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: customContainer(title: LocaleKeys.Destinition.tr(),descreip: LocaleKeys.Demo_location.tr()),
          ),
          SizedBox(height: 10.sp,),
          Container(
            padding: EdgeInsets.only(left: 18.sp,right: 18.sp),
            height: 156.h,
            width: 344.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.16),
                  offset: Offset(0, 3.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: customContainer(title: LocaleKeys.Destinition.tr(),descreip: LocaleKeys.Demo_location.tr()),
          ),
          SizedBox(height: 10.sp,),
          Container(
            padding: EdgeInsets.only(left: 18.sp,right: 18.sp),
            height: 156.h,
            width: 344.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.16),
                  offset: Offset(0, 3.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: customContainer(title: LocaleKeys.Destinition.tr(),descreip: LocaleKeys.Demo_location.tr()),
          ),
        ],
      ),
    );
  }

 Widget customContainer({required String title, required String descreip,}) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
          children: [
            Expanded(child: Align(
              alignment: AppShadePrefrence.isEnglish==true?Alignment.bottomLeft:
              Alignment.bottomRight,
              child: Text(title,style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
              ),),
            ),),
            Expanded(
              child: Align(
                alignment: AppShadePrefrence.isEnglish==true?Alignment.bottomLeft:
                Alignment.bottomRight,
                child: Text(LocaleKeys.pick.tr(),style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10.sp,
                ),),
              ),
            ),
           Expanded(child: Align(
             alignment: AppShadePrefrence.isEnglish==true?Alignment.bottomLeft:
             Alignment.bottomRight,
             child: Text(descreip,style: TextStyle(
               color: Colors.grey,
               fontSize: 16.sp,
             ),),
           ),),
           Expanded(child: Align(
               alignment: AppShadePrefrence.isEnglish==true?Alignment.centerLeft:
               Alignment.centerRight,
               child: Image.asset('assets/pic/pic5.png')),),
            Expanded(child: Align(
              alignment: Alignment.topLeft,
              child: Text(LocaleKeys.Booked_Rides.tr(),style: TextStyle(
                color: Colors.grey,
                fontSize: 16.sp,
              ),),
            ))
          ],
        ),),
        Expanded(child: Column(
          children: [
            Expanded(child: Align(
              alignment: Alignment.bottomCenter,
              child: Text('${LocaleKeys.Rs.tr()}. 200',style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),),
            ),),
            Expanded(child: Text(LocaleKeys.Total_cost.tr(),style: TextStyle(
              color: Colors.black,
              fontSize: 11.sp,
            ),),),
            Expanded(child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(LocaleKeys.Date_Time.tr(),style: TextStyle(
                color: Colors.black,
                fontSize: 11.sp,
              ),),
            ),),
            Expanded(child: Text('12 Sep - 12:23 PM',style: TextStyle(
              color: Colors.black,
              fontSize: 11.sp,
            ),))
          ],
        ))
      ],
    );
  }
}
