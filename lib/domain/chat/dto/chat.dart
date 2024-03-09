import 'dart:convert';

import './chat_message.dart';

class ChatDTO {
  final String avatar; 
  final String username;
  final List<ChatMessageDTO> chatMessageDTOList;
  
  const ChatDTO({
    required this.avatar, 
    required this.username, 
    required this.chatMessageDTOList,
  });

  factory ChatDTO.fromJson(Map<String, dynamic> data) {
    List<dynamic> messages = data['messages'];

    List<ChatMessageDTO> chatMessageDTOList = messages
        .map((message) => ChatMessageDTO.fromJson(message))
        .toList();
    
    return ChatDTO(
      username: data['username'],
      avatar: data['avatar'],
      chatMessageDTOList: chatMessageDTOList,
    );
  }

  Map<String, dynamic> toJson() {
    List<dynamic> messages = [];
    
    for (var chatMessageDTO in chatMessageDTOList) {
      messages.add(chatMessageDTO.toJson());
    }

    return {
      'username': username,
      'avatar': avatar,
      'messages': messages,
    };
  }
}