import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {

  final function;
  final color;
  final text;
  final icon;


  MyButton({this.function, this.color, this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(

        width: 100,
        height: 40,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(3)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,
              size: 18,
            ),
            Text(text,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
}
