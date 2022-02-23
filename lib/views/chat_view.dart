import 'package:firebase_session/blocs/chat/chat_cubit.dart';
import 'package:firebase_session/compnents/chat_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatView extends StatefulWidget {
  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  var messageController=TextEditingController();

  @override
  void initState() {
    ChatCubit.get(context).getUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatCubit,ChatState>(
      listener:(context,state){} ,
      builder: (context,state){
        var cubit=ChatCubit.get(context);
        return  Scaffold(
          appBar: AppBar(title:  Text('Welcome ${cubit.user!.email}'),

          centerTitle: true,
          backgroundColor: Colors.red[700],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              /// chat list
              cubit.user == null &&cubit.messagesStream==null ?
               const   CircularProgressIndicator():
              ChatList(
                messagesStream: cubit.messagesStream,
                userMail: cubit.user!.email,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: TextFormField(
                  controller: messageController,
                  decoration:  InputDecoration(
                    labelText: 'Message',
                    hintText: 'Type Here  ',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        DateTime now =DateTime.now();
                        cubit.sendMessage(messageController.text,now);
                        messageController.clear();
                      },
                      icon:const  Icon(Icons.send),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      } ,
    );
  }
}
