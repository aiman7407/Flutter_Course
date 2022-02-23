import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_session/models/message.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());

  static ChatCubit get(context)=>BlocProvider.of(context);

  String? userEmail;
  Stream ?messagesStream;
  User ? user;
  /// create functions => send , receive

sendMessage(String text,DateTime time)
{
userEmail =FirebaseAuth.instance.currentUser!.email;

  emit(ChatSendLoadingState());
  Message message = Message(text: text, time:time, sender: userEmail!);
  FirebaseFirestore.instance
      .collection('messages')
      .add(message.toMap())
      .then((value) {
        emit(ChatSendSuccessState());
  }).catchError((error){
    emit(ChatSendErrorState());

  });
}

receiveMessages()
{
  messagesStream=FirebaseFirestore.instance
      .collection('messages')
      .orderBy('time')
      .snapshots();
  emit(ChatReceiveMessageState());
}

getUserData()
{
  user=FirebaseAuth.instance.currentUser;
  emit(ChatGetUserDataState());
}




}
