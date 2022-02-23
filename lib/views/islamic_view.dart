import 'package:flutter/material.dart';
import 'package:form_session/components/my_card.dart';
import 'package:form_session/models/Alsalah.dart';
import 'package:form_session/src/data.dart';

class IslamicView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.grey),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: alsalahTimes.map((e) => MyCard(
                    name: e.name,
                    time: e.time,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
