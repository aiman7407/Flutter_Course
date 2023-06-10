import 'package:flutter/material.dart';

import '../screens/quiz_screen/quiz_screen.dart';
import '../screens/quran_screen/quran_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const QuranScreen(),
    );
  }
}