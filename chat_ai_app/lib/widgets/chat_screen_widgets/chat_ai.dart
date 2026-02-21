import 'package:chat_ai_app/generated/assets.dart';
import 'package:chat_ai_app/models/chat_model.dart';
import 'package:chat_ai_app/widgets/chat_screen_widgets/custom_container_response.dart';
import 'package:chat_ai_app/widgets/chat_screen_widgets/custom_container_sender.dart';
import 'package:chat_ai_app/widgets/chat_screen_widgets/loading_container.dart';
import 'package:flutter/material.dart';

class ChatAi extends StatelessWidget {
  final List<ChatModel> chatList;
  final bool isLoading;

  const ChatAi({super.key, required this.chatList, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 10),
      itemCount: chatList.length + (isLoading ? 1 : 0), // نزود عنصر للـ loading
      itemBuilder: (context, index) {
        if (index == chatList.length && isLoading) {
          // عنصر الـ loading في آخر القائمة
          return Padding(
            padding: const EdgeInsets.only(left: 16, top: 10, bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(Assets.imagesUserAvatarImg, width: 36, height: 36),
                const SizedBox(width: 8),
                SizedBox(width: 100, child: LoadingContainer()),
              ],
            ),
          );
        }

        final chat = chatList[index];
        if (chat.parts.isEmpty) return const SizedBox.shrink();

        if (chat.role == 'user') {
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: CustomSenderContainer(message: chat.parts[0].text),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: CustomResponseContainer(massegeResponse: chat.parts[0].text),
          );
        }
      },
    );
  }
}
