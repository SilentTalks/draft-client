import 'package:flutter/cupertino.dart';

import '../dto/chat_message.dart';
import 'chat_message_bubble.dart';

class ChatMessageWidget extends StatelessWidget {
  final ChatMessageDTO chatMessageDTO;

  const ChatMessageWidget({super.key, required this.chatMessageDTO});

  @override
  Widget build(BuildContext context) {
    return ChatMessageBubble(chatMessageDTO: chatMessageDTO);
  }
}
