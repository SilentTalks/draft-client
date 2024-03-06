import 'package:flutter/material.dart';

import '../dto/chat_list.dart';

class ChatListTileWidget extends StatelessWidget {
  final ChatListDTO chatListDTO;

  const ChatListTileWidget({super.key, required this.chatListDTO});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(chatListDTO.avatar),
      ),
      title: Text(chatListDTO.username),
      subtitle: Text(chatListDTO.lastMessage),
      onTap: () => Navigator.of(context).pushNamed('/chat'),
    );
  }
}
