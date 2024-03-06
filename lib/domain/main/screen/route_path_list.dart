import 'package:flutter/widgets.dart';

import '../../chat/screen/chat.dart';
import '../../chat_list/screen/chat_list.dart';

class RoutePathList {
  final String initialRoute = '/chat_list';

  late final Map<String, WidgetBuilder> routes;

  RoutePathList() {
    routes = <String, WidgetBuilder>{
      '/chat_list': (context) => const ChatListScreen(),
      '/chat': (context) => const ChatScreen(),
    };
  }
}
