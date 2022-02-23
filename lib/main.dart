import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_session/models/message.dart';
import 'package:firebase_session/src/app_root.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';


main()
async {

//   //box ininitalilze in main
//
//
//   await Hive.initFlutter();
//   await Hive.openBox('students');
//
//   // use in UI
//   final myBox = Hive.box('students');
//
// //  List<Message> names=[Message(text: text, time: time, sender: sender)];
//  // await myBox.put('names',names);
//
//   print(myBox.get('names'));
//


  //
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AppRoot());
}