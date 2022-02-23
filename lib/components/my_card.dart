import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final name;
  final time;


  MyCard({this.name, this.time});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          color: Colors.blue[900],
          borderRadius: BorderRadius.circular(15)
      ),

      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(name,
            style: TextStyle(
                fontSize: 30,
                color: Colors.white
            ),
          ),
          Text(time,
            style: TextStyle(
                fontSize: 30,
                color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}
