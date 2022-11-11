import 'package:bloc_session1/blocs/contacts/contacts_cubit.dart';
import 'package:bloc_session1/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/contact_card.dart';
import '../components/my_text_field.dart';
import '../models/person.dart';


class ContactsScreen extends StatefulWidget{
  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContactsCubit,ContactsState>(
        builder: (context, state) {

          var cubit = ContactsCubit.get(context);
          return Scaffold(
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add) ,
                onPressed: (){

                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (builder){
                        return  Container(
                          height: 700,
                          color: Colors.transparent, //could change this to Color(0xFF737373),
                          //so you don't have to change MaterialApp canvasColor
                          child:  Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:  BorderRadius.only(
                                      topLeft:  Radius.circular(10.0),
                                      topRight:  Radius.circular(10.0))),
                              child:  Column(
                                children: [
                                  MyTextField(
                                    controller: cubit.nameController,
                                    hint: "You Name here...",
                                  ),

                                  MyTextField(
                                    controller: cubit.phoneController,
                                    hint: "You phone number here...",
                                  ),

                                  MyTextField(
                                    controller: cubit.mailController,
                                    hint: "You email here...",
                                  ),
                                  MyButton(text: 'Submit',
                                    function: (){
                                    cubit.addContact();
                                    cubit.phoneController.clear();
                                    cubit.nameController.clear();
                                    cubit.mailController.clear();
                                    Navigator.pop(context);
                                    },
                                  )

                                ],
                              )),
                        );
                      }
                  );


                },
              ) ,
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
                      itemCount: cubit.myContacts.length,
                      itemBuilder: (context, index) {
                        return ContactCard(person: cubit.myContacts[index]) ;
                      }))

          );
        },
        listener: (context, state) {

        });
  }
}