import 'package:flutter/material.dart';
import 'package:review_session/src/app_colors.dart';

class BmiResultScreen extends StatelessWidget {

  final double result ;

  BmiResultScreen({required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBmiPrimaryColor,
      body: Container(
        height: 500,
        decoration: BoxDecoration(
          color: AppColors.kBmiSelectedColor
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${result.toInt()}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 60,

              ),
              ),
              Text('${resultAlgorithm()}'
                  ,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),

              ),
            ],
          ),
        ),
      ) ,

    );
  }


  String resultAlgorithm()
  {


    bool today=true;
    if (today==true)
      {
        print('ok')
      }
    else{
      print('not ok')
    }


    today==true?print('ok'):print('not ok');


    if(result<18.5)
      {
        return 'Underweight range !';
      }
    else if (result>18.5&&result<24.9){
      return' Healthy Weight range ! ';
    }
    // 25.0 to 29.9
    else if (result>25&&result<29.9)
      {
        return ' overweight range';
      }
    else {
      return 'error';
    }

  }
}
