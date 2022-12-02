import 'package:doctor_app/screens/home_screen.dart';
import 'package:doctor_app/screens/register_screen.dart';
import 'package:doctor_app/service/dio_helper/dio_helper.dart';
import 'package:doctor_app/service/sp_helper/sp_keys.dart';
import 'package:doctor_app/src/app_root.dart';
import 'package:flutter/material.dart';

import 'service/sp_helper/sp_helper.dart';


main()
async {

  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
 await  SharedPrefrenceHelper.init();


var screen ;
  if(SharedPrefrenceHelper.
  getData(key: SharedPreferencesKeys.token)==null)
  {screen= RegisterScreen();}
  else{screen= HomeScreen();}


  runApp(AppRoot(
    screen: screen,
  ));
}