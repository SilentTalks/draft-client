import 'package:flutter/cupertino.dart';

import '../dto/chat.dart';
import 'chat_message.dart';

class ChatMessageListWidget extends StatefulWidget {
  final ChatDTO chatDTO;
  
  const ChatMessageListWidget({super.key, required this.chatDTO});

  @override
  State<ChatMessageListWidget> createState() => _ChatMessageListWidgetState();
}

class _ChatMessageListWidgetState extends State<ChatMessageListWidget> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: widget.chatDTO.chatMessageDTOList.length,
      itemBuilder: (BuildContext context, int index) {
        return ChatMessageWidget(
            chatMessageDTO: widget.chatDTO.chatMessageDTOList[index]
        );
      },
    );
  }
}
