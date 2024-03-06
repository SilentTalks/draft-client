class ChatListDTO {
  final int id;
  final String username;
  final String avatar;
  final String lastMessage;

  const ChatListDTO({
    required this.id,
    required this.username,
    required this.avatar,
    required this.lastMessage,
  });

  factory ChatListDTO.fromJson(Map<String, dynamic> data) {
    return ChatListDTO(
      id: data['id'],
      username: data['username'],
      avatar: data['avatar'],
      lastMessage: data['lastMessage'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'avatar': avatar,
      'lastMessage': lastMessage,
    };
  }
}
