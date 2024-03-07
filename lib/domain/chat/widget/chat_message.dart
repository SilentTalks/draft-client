import 'package:flutter/cupertino.dart';
import 'package:silent_talks/domain/chat/dto/chat_message.dart';

class ChatMessageWidget extends StatelessWidget {
  final ChatMessageDTO chatMessageDTO;

  const ChatMessageWidget({super.key, required this.chatMessageDTO});

  @override
  Widget build(BuildContext context) {
    return Text(chatMessageDTO.text);
  }
}
