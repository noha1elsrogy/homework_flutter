// i        mport 'package:chat_ai_app/models/chat_model.dart';
// import 'package:dio/dio.dart';
// class ChatService {
//   final Dio dio;
//   ChatService({required this.dio});
//   Future<ChatModel> getMessage({required String messageUser}) async {
//     Response response = await dio.post(
//       'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent',
//       data: {
//         "input": [
//           {
//             "role": "user",
//             "content": [
//               {"type": "text", "text": messageUser},
//             ],
//           },
//         ],
//       },
//       options: Options(
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization':
//               'AIzaSyA1ua2fql3M9gJZae2mKceMU9ZTH0YsIkA', // بدل x-goog-api-key
//         },
//       ),
//     );
//     final chat = ChatModel.fromJson(response.data, messageUser);
//     return chat;
//   }
// }

import 'package:chat_ai_app/models/chat_model.dart';
import 'package:chat_ai_app/services/app_service.dart';
import 'package:dio/dio.dart';

class ChatService {
  Dio dio;
  ChatService({required this.dio});

  Future<ChatModel> sendMessage({required List<ChatModel> messages}) async {
    try {
      Response response = await ApiService().post(
        'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent',

        data: {
          // "contents": messages
          //     .map(
          //       (message) => {
          //         "role": message.role,
          //         "parts": message.parts
          //             .map((part) => {"text": part.text})
          //             .toList(),
          //       },
          //     )
          //     .toList(),

          //برجع ال List of object ->اصلها في json
          "contents": messages.map((message) => message.toJson()).toList(),
        },
        headers: {
          "Content-Type": "application/json",
          "x-goog-api-key": "AIzaSyASu96f1jaZJkpH-HoKauyRHI_68zjzxWk",
        },
      );
      // Safely parse the response from the Gemini API
      //   try {
      //     final candidates = response.data['candidates'] as List?;
      //     if (candidates != null && candidates.isNotEmpty) {
      //       final content = candidates.first['content'];
      //       if (content != null) {
      //         return ChatModel.fromJson(content);
      //       }
      //     }
      //     // If candidates are null, empty, or don't have content, return an error message.
      //     return ChatModel(role: 'model', parts: [
      //       PartsModel(text: 'Error: Failed to parse API response.')
      //     ]);
      //   } catch (e) {
      //     // If any other error occurs during parsing, return an error message.
      //     return ChatModel(
      //         role: 'model', parts: [PartsModel(text: 'Error: ${e.toString()}')]);
      //   }
      // }
      print(response.data);

      var messageModel = ChatModel.fromJson(
        response.data['candidates'][0]['content'],
      );
      return messageModel;
    } on DioException catch (e) {
      String errorMessage =
          e.response?.data['error']['message'] ?? "Something went wrong";
      throw Exception(errorMessage);
    }
  }
}
