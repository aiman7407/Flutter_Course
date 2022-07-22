import 'package:flutter/material.dart';

class PrayerCard extends StatelessWidget {
  String name;

  String time;

  PrayerCard({required this.name, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.indigo
        ),
        child: Row
          (
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
             name,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
            Text(
              time,
              style: const TextStyle(
                fontSize: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
