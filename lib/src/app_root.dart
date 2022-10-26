import 'package:flutter/material.dart';
import 'package:flutter_session3/screens/market_screen.dart';

import '../screens/counter_screen.dart';



class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  MarketScreen(),
    );
  }
}
