class ChatMessageDTO {
  final String text;
  final bool isOwn;

  const ChatMessageDTO({
    required this.text,
    required this.isOwn,
  });

  factory ChatMessageDTO.fromJson(Map<String, dynamic> data) {
    return ChatMessageDTO(
      text: data['text'],
      isOwn: data['isOwn'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'isOwn': isOwn,
    };
  }
}
