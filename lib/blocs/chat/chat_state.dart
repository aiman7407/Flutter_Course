part of 'chat_cubit.dart';

@immutable
abstract class ChatState {}

class ChatInitial extends ChatState {}

class ChatSendSuccessState extends ChatState {}
class ChatSendErrorState extends ChatState {}
class ChatSendLoadingState extends ChatState {}
class ChatReceiveMessageState extends ChatState {}
class ChatGetUserDataState extends ChatState {}

