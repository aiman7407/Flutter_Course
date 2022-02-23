import 'package:flutter/material.dart';
import 'package:pokemon_session/service/dio_helper/dio_service.dart';
import 'package:pokemon_session/src/app_root.dart';


void main()
{

  DioHelper.init();
  runApp(AppRoot());
}


