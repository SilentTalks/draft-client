import 'package:flutter/material.dart';

import '../dto/chat_list.dart';
import '../widget/chat_list_tile.dart';

class ChatListWidget extends StatefulWidget {
  final List<ChatListDTO> chatListDTOList;

  const ChatListWidget({super.key, required this.chatListDTOList});

  @override
  State<ChatListWidget> createState() => _ChatListWidgetState();
}

class _ChatListWidgetState extends State<ChatListWidget> {

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: widget.chatListDTOList.length,
      itemBuilder: (BuildContext context, int index) {
        return ChatListTileWidget(chatListDTO: widget.chatListDTOList[index]);
      },
    );
  }
}
