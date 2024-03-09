import '../dto/chat.dart';
import '../dto/chat_message.dart';

ChatDTO chatDTO = const ChatDTO(
  avatar: 'https://avatars.githubusercontent.com/u/152148618?s=200&v=4',
  username: 'zero',
  chatMessageDTOList: <ChatMessageDTO>[
    ChatMessageDTO(
      text: 'Hello 0',
      isOwn: true,
    ),
    ChatMessageDTO(
      text: 'Hello 1',
      isOwn: false,
    ),
    ChatMessageDTO(
      text: 'Hello 2',
      isOwn: false,
    ),
    ChatMessageDTO(
      text: 'Hello 3',
      isOwn: false,
    ),
  ]
);
