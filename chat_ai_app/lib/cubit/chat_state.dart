part of 'chat_cubit.dart';

@immutable
abstract class ChatState {}

class ChatInitial extends ChatState {}

class ChatLoading extends ChatState {}

class ChatSuccess extends ChatState {
  final List<ChatModel> chatList; // كل الرسائل
  ChatSuccess({required this.chatList});
}

class ChatFilure extends ChatState {
  final String error;

  ChatFilure({required this.error});
}
