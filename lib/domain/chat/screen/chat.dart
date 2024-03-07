import 'package:flutter/material.dart';

import '../widget/chat_message_list.dart';
import '../mock/chat_message_dto.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: ChatMessageListWidget(chatMessageDTOList: chatMessageDTOList),
    );
  }
}
