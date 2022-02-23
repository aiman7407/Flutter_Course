import 'package:flutter/material.dart';

class ResponsiveView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: width,
            height: height*0.5,
            color: Colors.green,
          ),

          Container(color: Colors.pinkAccent,

            height: height* 0.25,
            width: width,
          ),
          ElevatedButton(onPressed: (){
            print(MediaQuery.of(context).size.width);
          }, child: Text('Add'))
        ],
      ),
    );
  }
}
