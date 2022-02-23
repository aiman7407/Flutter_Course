import 'package:flutter/material.dart';

class MediaQueryResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.green,
            height: height * 0.5,
            width: 500,
          ),
          Container(
            width: 500,
            height: height * 0.5,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
