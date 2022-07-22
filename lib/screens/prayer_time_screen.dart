import 'package:flutter/material.dart';
import 'package:session2/models/prayer.dart';

import '../components/prayer_card.dart';

class PrayerTimeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.network(
                  'https://img.freepik.com/free-vector/arabic-pattern-shiny-gold-frame_53876-99828.jpg'),
             const Text(
                'اللهم صل وسلم على نبينا محمد',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(
                    'باقي على صلاة المغرب',
                    style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                  Text(
                    '01:30:00',
                    style: TextStyle(
                        color: Colors.cyan,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  Text(
                    'ثواني:دقائق:ساعات',
                    style: TextStyle(
                        color: Colors.cyan,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Divider(
                      color: Colors.indigo,
                      thickness: 4,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.withOpacity(0.5)),
              child: Column(
                children: todayPrayer
                    .map((e) => PrayerCard(name: e.name, time: e.time))
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
