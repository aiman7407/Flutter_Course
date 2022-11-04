import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_session5/screens/password_generator_screen.dart';
import 'package:flutter_session5/screens/splash_screen.dart';



class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          home: PasswordGeneratorScreen()
        );
      }
    );
  }
}
