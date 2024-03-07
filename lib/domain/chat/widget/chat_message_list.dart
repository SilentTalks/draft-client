import 'package:flutter/cupertino.dart';

import '../dto/chat_message.dart';
import 'chat_message.dart';

class ChatMessageListWidget extends StatefulWidget {
  final List<ChatMessageDTO> chatMessageDTOList;
  
  const ChatMessageListWidget({super.key, required this.chatMessageDTOList});

  @override
  State<ChatMessageListWidget> createState() => _ChatMessageListWidgetState();
}

class _ChatMessageListWidgetState extends State<ChatMessageListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: widget.chatMessageDTOList.length,
      itemBuilder: (BuildContext context, int index) {
        return ChatMessageWidget(chatMessageDTO: widget.chatMessageDTOList[index]);
      },
    );
  }
}
