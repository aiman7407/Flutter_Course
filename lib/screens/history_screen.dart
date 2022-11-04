import 'package:flutter/material.dart';
import 'package:flutter_session5/service/sharedprefrence_helper.dart';
import 'package:flutter_session5/service/sharedprefrence_keys.dart';
import 'package:flutter_session5/src/app_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HistoryScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBlue,
      body: Center(
        child: Text('${
        SharedPrefrenceHelper.getData(key: SharedPrefrenceKeys.passwordKey)
        }',
        style: TextStyle(
          fontSize: 30,
          color: AppColors.greyColor
        ),
        ),
      ),
    );
  }




  }

