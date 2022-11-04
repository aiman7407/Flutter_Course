import 'package:flutter/material.dart';
import 'package:flutter_session5/service/sharedprefrence_helper.dart';
import 'package:flutter_session5/src/app_root.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPrefrenceHelper.init();
  runApp( AppRoot());
}
