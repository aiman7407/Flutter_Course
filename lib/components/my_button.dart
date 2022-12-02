import 'package:doctor_app/src/app_colors.dart';
import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {

  final String label;
  final VoidCallback function;


  MyButton({required this.label,required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.kMainColor,
          borderRadius: BorderRadius.circular(4)
        ),
        child: Text(label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20
        ),
        ),
      ),
    );
  }
}
