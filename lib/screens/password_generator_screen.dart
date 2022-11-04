import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_session5/components/my_button.dart';
import 'package:flutter_session5/components/password_area.dart';
import 'package:flutter_session5/components/slider_area.dart';
import 'package:flutter_session5/config/size_config.dart';
import 'package:flutter_session5/config/toast_config.dart';
import 'package:flutter_session5/enums/toast_states.dart';
import 'package:flutter_session5/service/sharedprefrence_helper.dart';
import 'package:flutter_session5/src/app_colors.dart';
import 'package:flutter_session5/utils/app_navigator.dart';
import '../service/sharedprefrence_keys.dart';
import 'history_screen.dart';
class PasswordGeneratorScreen extends StatefulWidget {
  @override
  State<PasswordGeneratorScreen> createState() =>
      _PasswordGeneratorScreenState();}
class _PasswordGeneratorScreenState extends State<PasswordGeneratorScreen> {
  String randomPassword = '';
  double _currentSliderValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PasswordArea(randomPassword: randomPassword),
          SliderArea(currentSliderValue: _currentSliderValue),
          MyButton(
            width: 250.w,
            text: 'Generate Password',
            funcation: () {
              generateRandomValue();
              ToastConfig.showToast(
                  msg: 'Generated', toastStates: ToastStates.Success);
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyButton(
                width: 150.w,
                text: 'Save',
                funcation: ()  {
                  SharedPrefrenceHelper.saveData(
                          key: SharedPrefrenceKeys.passwordKey,
                          value: randomPassword).then((value) {
                    ToastConfig.showToast(
                        msg: 'Save to history ! ',
                        toastStates: ToastStates.Success);
                  });
                }),
          ),
          MyButton(
            width: 150.w,
            text: 'History',
            funcation: () {
              AppNavigator.appNavigator(context, false, HistoryScreen());
            },
          )
        ],
      ),
    );
  }
  generateRandomValue() {
    const _chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890!@#\$&*()';
    Random _rnd = Random();

    String getRandomString(int length) =>
        String.fromCharCodes(Iterable.generate(
            length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

    setState(() {
      randomPassword = getRandomString(_currentSliderValue.toInt());
    });
  }
}
