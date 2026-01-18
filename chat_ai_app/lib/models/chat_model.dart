// class ChatModel {
//   final String messageSend;
//   final String messageReceive;
//   ChatModel({required this.messageSend, required this.messageReceive});

//   factory ChatModel.fromJson(Map<String, dynamic> json, String messageSend) {
//     // Gemini API بيرجع array تحت ["candidates"][0]["content"][0]["text"]
//     final text = json['candidates']?[0]?['content']?[0]?['text'] ?? "No reply";
//     return ChatModel(messageSend: messageSend, messageReceive: text);
//   }
// }

class ChatModel {
  final String role;
  final List<PartsModel> parts;

  ChatModel({required this.role, required this.parts});
  factory ChatModel.fromJson(Map<String, dynamic> json) {
    return ChatModel(
      role: json["role"],
      //بحول ال
      parts:
          (json["parts"] as List) // list<Map>
              .map((part) => PartsModel.fromJson(part))
              .toList(), // List<MessagePart>,
    );
  }

  //فانكشن بتحول ال List of object-> List of map
  //اللي هستخدمها في ال service عشان ارجع الحاجه لاصلها
  Map<String, dynamic> toJson() {
    return {"role": role, "parts": parts.map((part) => part.toJson()).toList()};
  }
}

class PartsModel {
  final String text;
  PartsModel({required this.text});
  factory PartsModel.fromJson(Map<String, dynamic> json) {
    return PartsModel(text: json['text']);
  }
  //فانكشن بتحول ال List of object-> List of map
  //اللي هستخدمها في ال service عشان ارجع الحاجه لاصلها في json
  Map<String, dynamic> toJson() {
    return {"text": text};
  }
}
