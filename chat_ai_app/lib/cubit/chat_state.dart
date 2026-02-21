part of 'chat_cubit.dart';

@immutable
abstract class ChatState {}

class ChatInitial extends ChatState {}

class ChatLoading extends ChatState {}

class ChatSuccess extends ChatState {
  final ChatModel chatModel; // كل الرسائل
  ChatSuccess({required this.chatModel});
}

class ChatFilure extends ChatState {
  final String error;

  ChatFilure({required this.error});
}
