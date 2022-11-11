import 'package:flutter/material.dart';

import '../models/person.dart';

class ContactCard extends StatelessWidget {

  final Person person;


  ContactCard({required this.person});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 350,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  person.image),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  person.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    Text(
                      person.phone,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    Text(
                      person.email,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}