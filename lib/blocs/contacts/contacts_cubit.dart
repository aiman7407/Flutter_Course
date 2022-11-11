import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../models/person.dart';

part 'contacts_state.dart';

class ContactsCubit extends Cubit<ContactsState> {
  ContactsCubit() : super(ContactsInitial());

  static ContactsCubit get(context) => BlocProvider.of(context);



  List<Person> myContacts = [];

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController mailController = TextEditingController();


  addContact(){
    myContacts.add(Person(
        phone: phoneController.text,
        name: nameController.text,
        email: mailController.text
    ));
    print(myContacts);
    emit(ContactsAddContacts());
  }



}
