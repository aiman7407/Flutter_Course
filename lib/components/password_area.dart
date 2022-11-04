import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/size_config.dart';
import '../src/app_colors.dart';


class PasswordArea extends StatelessWidget {

  final String randomPassword;


  PasswordArea({required this.randomPassword});

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: AppColors.greyColor),
            color: Colors.white,
            borderRadius: BorderRadius.circular(25)),
        width: SizeConfig.screenWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: Text(
                randomPassword,
                style: TextStyle(
                    fontSize: 20.sp, color: AppColors.greyColor),
              ),
            ),
            Icon(
              Icons.copy,
              size: 25.sp,
              color: AppColors.greyColor,
            )
          ],
        ),
      ),
    );
  }
}
