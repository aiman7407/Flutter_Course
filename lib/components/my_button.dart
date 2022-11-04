import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../src/app_colors.dart';


class MyButton extends StatelessWidget {

  final text;
  final funcation;
  final width;

  MyButton({this.text, this.funcation,
  this.width
  });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: funcation,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 45),
        decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.greenColor
        ) ,
        width: width,
        child: Text(text,
          style: TextStyle(
              fontSize: 18.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500
          )
        ),
      ),
    );
  }
}
