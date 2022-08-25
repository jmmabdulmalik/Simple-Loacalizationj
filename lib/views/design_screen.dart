import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localization/views/setting_screen.dart';
import 'detail_screen.dart';
import 'home_screen.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50.h,
        width: MediaQuery.of(context).size.width.w,
        color: Colors.white,
        child: Row(
          children: [
            Expanded(child: InkWell(
                onTap: (){
                  controller.jumpToPage(0);
                },
                child: Icon(Icons.home_filled,color: Colors.black,size: 20.sp,))),
            Expanded(child: InkWell(
                onTap: (){
                  controller.jumpToPage(1);
                },
                child: Icon(Icons.read_more,color: Colors.black,size: 20.sp,))),
            Expanded(child: InkWell(
                onTap: (){
                  controller.jumpToPage(2);
                },
                child: Icon(Icons.settings,color: Colors.black,size: 20.sp,)))
          ],
        ),
      ),
        body:PageView(
          controller: controller,
          children: [
            HomeScreen(),
            DetailScreen(),
            SettingScreen(),
          ],
        ) );
  }

}
