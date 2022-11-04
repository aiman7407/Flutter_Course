import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../src/app_colors.dart';

class SliderArea extends StatefulWidget {

  double currentSliderValue;


  SliderArea({ required this.currentSliderValue});

  @override
  State<SliderArea> createState() => _SliderAreaState();
}

class _SliderAreaState extends State<SliderArea> {



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Password Length',
              style: TextStyle(fontSize: 22.sp),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 275.w,
                child: Slider(
                  thumbColor: AppColors.blueColor,
                  inactiveColor: AppColors.greyColor,
                  activeColor: AppColors.greyColor,
                  value: widget.currentSliderValue,
                  max: 18,
                  label: widget.currentSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      widget.currentSliderValue = value;
                    });
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.greyColor, width: 0.8),
                ),
                width: 60,
                height: 40,
                child: Text(
                  '${widget.currentSliderValue.toInt()}',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
