import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  final int score;
  const ScoreScreen({Key? key,
  required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Score'),
      ),
      body: Column(
        children: [

          Image.asset("assets/images/celebrate.png"),
          SizedBox(height: 15,),
          Text('Score: $score',style: TextStyle(fontSize: 22,
          fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
