import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_session5/config/size_config.dart';
import 'package:flutter_session5/screens/password_generator_screen.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => PasswordGeneratorScreen()));
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.network('https://img.freepik.com/free-vector/hacker-breaking-lock-get-access-personal-information-computer-isometric_1284-63723.jpg'),
            Text('Secure Your Accounts ! ',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold
            ),
            ),
            CircularProgressIndicator(
              color: Colors.red,
              backgroundColor: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}
