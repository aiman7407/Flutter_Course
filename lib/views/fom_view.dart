import 'package:flutter/material.dart';

class FormView extends StatefulWidget {
  @override
  _FormViewState createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {

  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is Form Session'
        ),


      ),

      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller:myController ,
              decoration: InputDecoration(
                hintText: 'please Enter Your Email',
                labelText: 'Label text',

                border: OutlineInputBorder(),

              ),
            ),



            ElevatedButton(
              onPressed: () {
                myController.text;
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
            ),



          ],
        ),

      ),
    );
  }
}


