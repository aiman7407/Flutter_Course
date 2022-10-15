import 'package:flutter/material.dart';
import 'package:flutter_seesion2/screens/contacts_screen.dart';
import 'package:flutter_seesion2/screens/prayer_time_screen.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrayerTimeScreen(),
    );
  }
}
