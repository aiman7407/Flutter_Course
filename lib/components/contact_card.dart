import 'package:flutter/material.dart';


class ContactCard extends StatelessWidget {

  String name ;
  String phoneNumber;
  String email;


  ContactCard({required this.name,required this.phoneNumber, required this.email});

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: BorderRadius.circular(20)
        ),

        height: 200,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 60,
              child: Icon(Icons.person,
                size: 80,
                color: Colors.white,
              ),


            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.phone,
                    size: 25,
                    color: Colors.black,
                  ),
                  Text(phoneNumber,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white
                    ),
                  )
                ]),
                Row(children: [
                  Icon(
                    Icons.mail,
                    size: 25,
                    color: Colors.black,
                  ),
                  Text(email,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white
                    ),
                  )
                ]),


              ],
            ),
          ],
        ),
      ),
    );

  }
}
