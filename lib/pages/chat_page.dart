import 'package:flutter/material.dart';
import 'package:whats_app/data/data_dummy.dart';
import 'package:whats_app/widgets/widgets.dart';

class ChatPage extends StatelessWidget {
  DataDummy data = DataDummy();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          itemCount: data.chats.length,
          itemBuilder: (context, index) {
            return ItemChatWidget(
              user: data.chats[index],
            );
          },
        ),
        Positioned(
          bottom: 10.0,
          right: 10.0,
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.message,
            ),
          ),
        ),
      ],
    );
  }
}
