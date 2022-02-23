import 'package:flutter/material.dart';
import 'package:session_8/views/responive_view.dart';
import 'package:session_8/views/shared_preference_view.dart';


class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResponsiveView(),
    );
  }
}
