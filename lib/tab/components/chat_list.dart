import 'package:chat_app/tab/chat.dart';
import 'package:chat_app/tab/components/chat_widget.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    final chats = getChats();

    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        final e = chats[index];

        return Column(
          children: [
            ChatWidget(chat: e),
            chats.indexOf(e) != chats.length - 1
                ? const Divider(
                    indent: 80,
                    height: 1,
                    endIndent: 16,
                  )
                : const SizedBox(),
          ],
        );
      },
    );
  }
}
