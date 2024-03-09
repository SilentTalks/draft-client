import 'package:flutter/material.dart';

import '../widget/chat_message_list.dart';
import '../mock/chat_dto.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(backgroundImage: NetworkImage(chatDTO.avatar)),
            const SizedBox(width: 6),
            Text(chatDTO.username),
          ],
        ),
      ),
      body: ChatMessageListWidget(chatDTO: chatDTO),
    );
  }
}
