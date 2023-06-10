import 'package:flutter/material.dart';
import 'package:review_session/models/person.dart';
import 'package:review_session/screens/contancts_screen.dart';

class CreateContactScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Create new contact',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
         const  SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: nameController,
              decoration: const  InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: phoneNumberController,
              decoration:  const InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: emailController,
              decoration:  const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {


                myContacts.add(Person(
                    name: nameController.text,
                    phone: phoneNumberController.text,
                    image:
                    'https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg',
                    email: emailController.text));


                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactsScreen()));
              },
              child: const Text('Add Contact'))
        ],
      ),
    );
  }
}
