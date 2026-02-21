import 'package:bloc/bloc.dart';
import 'package:chat_ai_app/models/chat_model.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../services/chat_service.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());

  sendMessage(List<ChatModel> messages) async {
    emit(ChatLoading());
    try {
      var chatModel = await ChatService(
        dio: Dio(),
      ).sendMessage(messages: messages);
      messages.add(chatModel); // Add the model's response to the list
      emit(ChatSuccess(chatModel: chatModel));
    } catch (e) {
      emit(ChatFilure(error: e.toString()));
    }
  }
}
