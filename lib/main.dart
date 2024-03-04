import 'package:flutter/material.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    List<UserDialogDTO> userDialogDTOs = <UserDialogDTO>[
      const UserDialogDTO(
        id: 0,
        username: 'zero',
        avatar: 'https://avatars.githubusercontent.com/u/152148618?s=200&v=4',
        lastMessage: 'Hello 0',
      ),
      const UserDialogDTO(
        id: 1,
        username: 'one',
        avatar: 'https://avatars.githubusercontent.com/u/152148618?s=200&v=4',
        lastMessage: 'Hello 1',
      ),
      const UserDialogDTO(
        id: 2,
        username: 'two',
        avatar: 'https://avatars.githubusercontent.com/u/152148618?s=200&v=4',
        lastMessage: 'Hello 2',
      ),
      const UserDialogDTO(
        id: 3,
        username: 'three',
        avatar: 'https://avatars.githubusercontent.com/u/152148618?s=200&v=4',
        lastMessage: 'Hello 3',
      ),
    ];

    return MaterialApp(
      title: 'SilentTalks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.black,
          foregroundColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SilentTalks'),
        ),
        body: UserDialogWidget(userDialogDTOs: userDialogDTOs),
      ),
    );
  }
}

class UserDialogDTO {
  final int id;
  final String username;
  final String avatar;
  final String lastMessage;

  const UserDialogDTO({
    required this.id,
    required this.username,
    required this.avatar,
    required this.lastMessage,
  });

  factory UserDialogDTO.fromJson(Map<String, dynamic> data) {
    return UserDialogDTO(
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

class UserDialogWidget extends StatefulWidget {
  final List<UserDialogDTO> userDialogDTOs;

  const UserDialogWidget({super.key, required this.userDialogDTOs});

  @override
  State<UserDialogWidget> createState() => _UserDialogWidgetState();
}

class _UserDialogWidgetState extends State<UserDialogWidget> {

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: widget.userDialogDTOs.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(widget.userDialogDTOs[index].avatar),
          ),
          title: Text(widget.userDialogDTOs[index].username),
          subtitle: Text(widget.userDialogDTOs[index].lastMessage),
        );
      },
    );
  }
}
