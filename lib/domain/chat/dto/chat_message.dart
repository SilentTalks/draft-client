class ChatMessageDTO {
  final int id;
  final String username;
  final String avatar;
  final String text;

  const ChatMessageDTO({
    required this.id,
    required this.username,
    required this.avatar,
    required this.text,
  });

  factory ChatMessageDTO.fromJson(Map<String, dynamic> data) {
    return ChatMessageDTO(
      id: data['id'],
      username: data['username'],
      avatar: data['avatar'],
      text: data['text'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'avatar': avatar,
      'text': text,
    };
  }
}
