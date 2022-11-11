import 'package:flutter/material.dart';
import 'package:session4_eraasoft/enum/game_result.dart';
import 'package:session4_eraasoft/views/game_screen.dart';



class AppRoot extends StatelessWidget {



  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: GameScreen(),
    );
  }
}
