import 'package:flutter/material.dart';

import '../dto/chat_message.dart';

class ChatMessageBubble extends StatelessWidget {
  final ChatMessageDTO chatMessageDTO;

  const ChatMessageBubble({super.key, required this.chatMessageDTO});

  @override
  Widget build(BuildContext context) {
    MainAxisAlignment mainAxisAlignment = chatMessageDTO.isOwn
        ? MainAxisAlignment.end
        : MainAxisAlignment.start;

    return Row(
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
          child: CustomPaint(
            painter: _ChatMessageBubble(),
            child: Container(
              constraints: const BoxConstraints(minWidth: 50, maxWidth: 300),
              padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
              child: Text(
                chatMessageDTO.text,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ChatMessageBubble extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.black87;

    final RRect bubbleBody = RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        const Radius.circular(16),
    );

    // final Path bubbleTail = Path()
    //   ..moveTo(5, size.height - 5)
    //   ..quadraticBezierTo(-5, size.height, -16, size.height - 4)
    //   ..quadraticBezierTo(-5, size.height - 5, 0, size.height - 17);

    canvas.drawRRect(bubbleBody, paint);
    // canvas.drawPath(bubbleTail, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
