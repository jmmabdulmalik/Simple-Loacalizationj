import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/translation/codegen_loader.g.dart';
import 'package:localization/views/translate_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controlers/app_cubits/slider_cubits.dart';
import 'controlers/shade_prefrence.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  var language = await AppShadePrefrence.getStatus();
  AppShadePrefrence.isEnglish = language==null?true:language;
  debugPrint('$language');
  debugPrint('${AppShadePrefrence.isEnglish}');

  runApp(
    EasyLocalization(
      assetLoader: CodegenLoader(),
      supportedLocales: [Locale('en'), Locale('ur')],
      path: 'assets/translation',
      fallbackLocale: Locale('en'),
      // <-- change the path of the translation files
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SliderCubit(0),
      child: ScreenUtilInit(
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              home: OnbordingScreen(),
            );
          }),
    );
  }
}
