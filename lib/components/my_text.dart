import 'package:flutter/material.dart';


class MyText extends StatelessWidget {

  final String name;

  MyText(this.name);

  @override
  Widget build(BuildContext context) {
    return  Text(name.toUpperCase(),
      style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.bold
      ),
    );
  }
}
