import 'package:flutter/material.dart';

class AppNavigator
{

static  appNavigator(context, isFinished,screen) {

    if(isFinished==true)
      {
        Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => screen),);
      }
    else
      {

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),);
      }



  }
}