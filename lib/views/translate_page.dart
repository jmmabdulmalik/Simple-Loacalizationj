import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localization/controlers/shade_prefrence.dart';
import 'package:localization/translation/locale_key.g.dart';
import '../controlers/app_controlers_static.dart';
import '../controlers/app_cubits/slider_cubits.dart';
import 'design_screen.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({Key? key}) : super(key: key);

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  @override
  Widget build(BuildContext context) {
    var heighat = MediaQuery.of(context).size.height.h;
    var width = MediaQuery.of(context).size.width.w;

    var index = 0;

    List pic = [
      '1',
      '2',
      '3',
    ];

    List title1 = [
      LocaleKeys.title1_1.tr(),
      LocaleKeys.title1_2.tr(),
      LocaleKeys.title1_3.tr(),
    ];

    List title2 = [
     LocaleKeys.title2_1.tr(),
    LocaleKeys.title2_2.tr(),
    LocaleKeys.title2_3.tr(),
    ];

    List title3 = [
      LocaleKeys.title3_1.tr(),
      LocaleKeys.title3_2.tr(),
      LocaleKeys.title3_3.tr(),
    ];


    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 300.sp,
                  top: 20.sp,
                ),
                height: 20.h,
                width: 30.w,
                child: InkWell(
                  onTap: () {
                    AppControlers.controller.jumpToPage(2);
                  },
                  child: Text(
                    LocaleKeys.skip.tr(),
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 301.95.h,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: PageView.builder(
                  itemCount: 3,
                  controller: AppControlers.controller,
                  onPageChanged: (value) {
                    context.read<SliderCubit>().getSlideIndex(index: value);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset('assets/pic/pic${pic[index]}.png');
                  },
                ),
              ),
              BlocBuilder<SliderCubit, int>(
                builder: (context, state) {
                  return Container(
                    margin: EdgeInsets.only(left: 120.sp, right: 120.sp),
                    height: 30.h,
                    width: 70.w,
                    child: Row(
                      children: [
                        Expanded(
                            flex: state == 0 ? 2 : 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 15,
                              width: 20,
                              decoration: BoxDecoration(
                                color: state == 0
                                    ? Color(0xff30242A)
                                    : Color(0xffB59494),
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                            )),
                        Expanded(
                            flex: state == 1 ? 2 : 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 15,
                              width: 10,
                              decoration: BoxDecoration(
                                color: state == 1
                                    ? Color(0xff30242A)
                                    : Color(0xffB59494),
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                            )),
                        Expanded(
                          flex: state == 2 ? 2 : 1,
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 15,
                            width: 20,
                            decoration: BoxDecoration(
                              color: state == 2
                                  ? Color(0xff30242A)
                                  : Color(0xffB59494),
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              BlocBuilder<SliderCubit, int>(
                builder: (context, state) {
                  return Container(
                    height: 121.h,
                    width: 254.w,
                    child: Column(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              state == 0
                                  ? '${title1[state]}'
                                  : state == 1
                                      ? '${title1[state]}'
                                      : '${title1[state]}',
                              style: TextStyle(
                                fontSize: 27.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              state == 0
                                  ? '${title2[state]}'
                                  : state == 1
                                      ? '${title2[state]}'
                                      : '${title2[state]}',
                              style: TextStyle(
                                fontSize: 27.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              state == 0
                                  ? '${title3[state]}'
                                  : state == 1
                                      ? '${title3[state]}'
                                      : '${title3[state]}',
                              style: TextStyle(
                                fontSize: 27.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: () async {
                await context.setLocale(Locale("en"));
                AppShadePrefrence.isFromEnglishSide(true);
                AppShadePrefrence.isEnglish= await AppShadePrefrence.getStatus();
                print(AppShadePrefrence.isEnglish);
              },
              child: Container(
                margin: EdgeInsets.only(left: 50.sp,right: 50.sp),
                height: 30.h,
                color: Colors.yellow,
                child: Center(child: Center(child: Text('English'))),
              ),
            ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: ()  async {
                    await context.setLocale(Locale("ur"));
                    AppShadePrefrence.isFromEnglishSide(false);
                    AppShadePrefrence.isEnglish = await AppShadePrefrence.getStatus();
                    print(AppShadePrefrence.isEnglish);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 50.sp,right: 50.sp),
                  height: 30.h,
                  color: Colors.yellow,
                  child: Center(child: Center(child: Text('Urdu'))),
                ),
              ),
            SizedBox(
              height: 10.h,
            ),
              InkWell(
                onTap: (){
                  AppControlers.controller.page==0?
                  AppControlers.controller.jumpToPage(1):AppControlers.controller==1?
                  AppControlers.controller.jumpToPage(2):
                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                    return StoreScreen();
                  }));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 100.sp,right: 100.sp),
                  height: 56.h,
                  width: 203.w,
                  decoration: BoxDecoration(
                    color: Color(0xff4756DF),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Center(
                    child: Text(LocaleKeys.Next.tr(),style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),),
                  )
                ),
              )
            ],
          ),
          ),
    );
  }
}
