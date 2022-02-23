import 'package:firebase_session/blocs/chat/chat_cubit.dart';
import 'package:firebase_session/blocs/register/register_cubit.dart';
import 'package:firebase_session/views/chat_view.dart';
import 'package:firebase_session/views/register_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>RegisterCubit()),
        BlocProvider(create:(context)=>ChatCubit()..receiveMessages() )
      ],
      child: MaterialApp(
        home:ChatView()
        //RegisterView(),
      ),
    );
  }
}
