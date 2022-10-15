import 'package:flutter/material.dart';
import 'package:flutter_seesion2/components/contact_card.dart';
import 'package:flutter_seesion2/models/person.dart';

class ContactsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('My Contacts',
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: myContacts.length,
            itemBuilder: (context, index) {
              return ContactCard(person: myContacts[index]) ;
            }))
      
    );
  }


}