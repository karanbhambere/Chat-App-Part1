import 'package:chat_app/constants/color_constants.dart';
import 'package:flutter/material.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({super.key});

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.lightBackgroundColor,
        elevation: 0,
        title: const Text('Chat'),
        actions: const [Icon(Icons.search)],
      ),
    );
  }
}
