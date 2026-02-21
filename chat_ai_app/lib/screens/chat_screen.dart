import 'package:chat_ai_app/cubit/chat_cubit.dart';
import 'package:chat_ai_app/widgets/chat_screen_widgets/chat_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => ChatCubit(), child: ChatScreenBody());
  }
}
