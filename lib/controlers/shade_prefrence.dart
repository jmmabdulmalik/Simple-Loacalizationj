
//
import 'package:shared_preferences/shared_preferences.dart';

class AppShadePrefrence{

  static bool? isEnglish;

  static Future<bool?> isFromEnglishSide(bool value)async{

    var pref =  await SharedPreferences.getInstance();

    var status = await pref.setBool('language', value);
    return status;
  }

  static Future<bool?> getStatus()async{


    var pref =  await SharedPreferences.getInstance();

    var status =  pref.getBool('language');
    return status;
  }

 }