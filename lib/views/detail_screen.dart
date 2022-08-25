import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controlers/shade_prefrence.dart';
import '../translation/locale_key.g.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 16.sp, right: 16.sp, top: 10.sp),
      children: [
        Container(
          height: 232.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Container(
              padding: EdgeInsets.only(
                top: 10.sp,
              ),
              height: 232.h,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/pic/pic1.png',
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(
          height: 17.h,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              getContainer(
                color: Colors.amber,
                width: 91.w,
                text: Text(
                  LocaleKeys.all.tr(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 15.sp,
              ),
              getContainer(
                color: Colors.white,
                width: 91.w,
                text: Text(
                  LocaleKeys.tools.tr(),
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                ),
              ),
              SizedBox(
                width: 15.sp,
              ),
              getContainer(
                color: Colors.white,
                width: 129.w,
                text: Text(
                  LocaleKeys.allowances.tr(),
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                ),
              ),
              SizedBox(
                width: 15.sp,
              ),
              getContainer(
                color: Colors.white,
                width: 86.w,
                text: Text(
                  LocaleKeys.garden.tr(),
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        storeCustomContainer(context),
        SizedBox(
          height: 10.h,
        ),
        storeCustomContainer(context),
      ],
    );
  }

  getContainer(
      {required Color color, required double width, required Text text}) {
    return Container(
      height: 56.h,
      width: width,
      decoration:
      BoxDecoration(color: color, border: Border.all(color: Colors.amber)),
      child: Center(child: text),
    );
  }

  storeCustomContainer(BuildContext context) {
    return Container(
      height: 144.h,
      width: 384.w,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            offset: Offset(0, 3.0),
            blurRadius: 17.0,
          ),
        ],
      ),
      child: Column(
        children:  [
          Expanded(
            flex: AppShadePrefrence.isEnglish==true?1:2,
            child: Text(
              LocaleKeys.All_Details.tr(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex:2,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(LocaleKeys.Student_no.tr(),style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                    ),),
                  ),
                ),
                Expanded(
                  flex:2,
                  child: Text(LocaleKeys.Student_name.tr(),style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                  ),),),
                Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(LocaleKeys.Student_fees.tr(),style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                      ),),
                    ))
              ],
            ),),
          Expanded(
            child:getRow(no: 1, name: LocaleKeys.khan.tr(), fee: 200),
          ),
          Expanded(
            child:getRow(no: 2,name: LocaleKeys.basit.tr(),fee: 1000),
          ),
          Expanded(
            child:getRow(no: 3,name: LocaleKeys.arif.tr(),fee: 200),
          ),
          Expanded(
            child:getRow(no:4,name: LocaleKeys.rehman.tr(),fee: 400),
          ),
        ],
      ),
    );
  }

  Widget getRow({required int no, required String name, required int fee}){
    return Row(
      children: [
        Expanded(
          flex:2,
          child: Align(
            alignment: Alignment.center,
            child: Text('$no',style: TextStyle(
              color: Colors.black,
              fontSize: 15.sp,
            ),),
          ),
        ),
        Expanded(
          flex:2,
          child: Text('$name',style: TextStyle(
            color: Colors.black,
            fontSize: 15.sp,
          ),),),
        Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.center,
              child: Text('$fee',style: TextStyle(
                color: Colors.black,
                fontSize: 15.sp,
              ),),
            ))
      ],
    );
  }
}
