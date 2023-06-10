import 'package:flutter/material.dart';
import 'package:review_session/screens/bmi_screen.dart';

import '../screens/contancts_screen.dart';


class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiScreen(),
    );
  }
}
