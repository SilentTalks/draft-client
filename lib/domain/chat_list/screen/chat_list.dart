import 'package:flutter/material.dart';

import '../mock/chat_list_dto.dart';
import '../widget/user_dialog_list_view.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SilentTalks')),
      body: ChatListWidget(chatListDTOList: chatListDTOList),
    );
  }
}
