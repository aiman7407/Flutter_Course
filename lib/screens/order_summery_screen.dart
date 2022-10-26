import 'package:flutter/material.dart';


class OrderSummryScreen extends StatelessWidget {

  final double total;


  OrderSummryScreen({ required this.total});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Total amount for your order is $total'),
      ),
    );
  }
}
