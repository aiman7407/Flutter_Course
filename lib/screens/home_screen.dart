import 'package:flutter/material.dart';
import 'package:session2/components/contact_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Contacts'),
      ),
      body: Column(
        children: [
          ContactCard(phoneNumber: '987656789',
          email: 'test1@test.com',
            name: 'Mokhtar',
          ),
          ContactCard(email: 'test2@test.com',
          name: 'Adelrahman',
            phoneNumber: '34567890',
          ),
          ContactCard(email:'test3@test.com' ,phoneNumber: '67890234325',name:'asser' ),
        ],
      ),

    );
  }
}

