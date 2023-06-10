import 'package:flutter/material.dart';
import 'package:review_session/screens/create_contact_screen.dart';

import '../components/contacnts_card.dart';
import '../models/person.dart';

class ContactsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red[800],
            child: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CreateContactScreen()));
            }),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            'My Contacts',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
            child: ListView.builder(
                itemCount: myContacts.length,
                itemBuilder: (context, index) {
                  return ContactCard(person: myContacts[index]);
                })));
  }
}
