import 'package:flutter/material.dart';
import 'package:flutter_seesion2/models/prayer.dart';


class PrayerCard extends StatelessWidget
{

  final Prayer prayer;


  PrayerCard({ required this.prayer});

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.indigo,
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            textDirection: TextDirection.rtl,
            children: [
              Text(prayer.name,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white
                ),
              ),
              Text(prayer.time,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),
              )
            ]),
      ),
    ) ;
  }

}
