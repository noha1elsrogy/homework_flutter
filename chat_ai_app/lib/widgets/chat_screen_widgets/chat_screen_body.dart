import 'package:chat_ai_app/cubit/chat_cubit.dart';
import 'package:chat_ai_app/generated/assets.dart';
import 'package:chat_ai_app/models/chat_model.dart';
import 'package:chat_ai_app/styles/text_style_app.dart';
import 'package:chat_ai_app/widgets/chat_screen_widgets/chat_ai.dart';
import 'package:chat_ai_app/widgets/chat_screen_widgets/custom_appBar.dart';
import 'package:chat_ai_app/widgets/help.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreenBody extends StatelessWidget {
  final List<ChatModel> chatList = [];
  ChatScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 10),
        child: CustomAppBar(),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 19),
              child: BlocConsumer<ChatCubit, ChatState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (state is ChatSuccess)
                        Expanded(child: ChatAi(chatList: chatList)),
                      if (state is ChatFilure)
                        Center(
                          child: Text(
                            state.error,
                            style: const TextStyle(color: Colors.red),
                          ),
                        ),
                      if (state is ChatLoading)
                        const Center(child: CircularProgressIndicator()),
                      if (state is ChatInitial) Help(),
                      const SizedBox(height: 16),
                    ],
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              // controller:
              //     TextEditingController(), // Add a controller to clear text
              onSubmitted: (value) {
                if (value.isNotEmpty) {
                  chatList.add(
                    ChatModel(
                      role: 'user',
                      parts: [PartsModel(text: value)],
                    ),
                  );
                  context.read<ChatCubit>().sendMessage(chatList);
                }
              },
              decoration: InputDecoration(
                labelText: "Hello chatGPT, how are you today?",
                labelStyle: AppTextStyles.grayNunito15Normal(Colors.blue),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IntrinsicWidth(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          Assets.imagesMicrophone,
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            Assets.imagesSend,
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.white, width: 1.7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.white, width: 1.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
