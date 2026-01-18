import 'package:chat_ai_app/models/chat_model.dart';
import 'package:chat_ai_app/widgets/chat_screen_widgets/custom_container_response.dart';
import 'package:chat_ai_app/widgets/chat_screen_widgets/custom_container_sender.dart';
import 'package:flutter/material.dart';

class ChatAi extends StatelessWidget {
  final List<ChatModel> chatList;

  const ChatAi({super.key, required this.chatList});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (
            int i = 0;
            i < chatList.length;
            i++
          ) // Iterate through the chatList
            if (chatList[i].parts.isNotEmpty) ...[
              if (chatList[i].role == 'user')
                CustomSenderContainer(message: chatList[i].parts[0].text),
              if (chatList[i].role == 'model')
                CustomResponseContainer(
                  massegeResponse: chatList[i].parts[0].text,
                ),
              SizedBox(height: 15),
            ],
        ],
      ),
    );
  }
}
