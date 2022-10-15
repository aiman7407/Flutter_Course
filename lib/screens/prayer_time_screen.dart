import 'dart:ui';

import 'package:flutter/material.dart';

import '../components/prayer_card.dart';
import '../models/prayer.dart';

class PrayerTimeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            //alignment: Alignment.bottomRight,
            children: [
              Image.network(
                'https://img.freepik.com/free-vector/arabic-ornamental-background-paper-style_23-2148886196.jpg',
                height: 250,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Positioned(
                bottom: 5,
                right: 5,
                child: Text(
                  'اللهم صل وسلم على سيدنا محمد',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            width: 400,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300]),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: todaysPrayer.map((e) {
                  return PrayerCard(prayer: e);
                } ).toList()
              ),
            ),
          ),
        ],
      ),
    );
  }
}
