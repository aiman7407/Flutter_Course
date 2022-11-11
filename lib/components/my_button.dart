import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final text ;
  final function;


  MyButton({this.text, this.function});

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: function,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin:const  EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(
                width: 1
            ),
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(20)
        ),
        child:Text(text,
          style: const TextStyle(
              fontSize: 20,
              color: Colors.white
          ),
        ) ,
      ),
    );
  }
}
