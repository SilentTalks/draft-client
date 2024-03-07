import 'package:flutter/widgets.dart';
import 'package:silent_talks/domain/main/enum/route_path_name.dart';

import '../../chat/screen/chat.dart';
import '../../chat_list/screen/chat_list.dart';

class RoutePathList {
  final String initialRoute = RoutePathNameEnum.chatList.value;

  late final Map<String, WidgetBuilder> routes;

  RoutePathList() {
    routes = <String, WidgetBuilder>{
      RoutePathNameEnum.chatList.value: (context) => const ChatListScreen(),
      RoutePathNameEnum.chat.value: (context) => const ChatScreen(),
    };
  }
}
