import 'package:flutter/material.dart';
import '../data.dart';
import 'my_messages.dart';
import 'sender_messages_car.dart';

class ChatList extends StatelessWidget {
  final String? message;
  final String? date;
  const ChatList({
    Key? key,
    this.message,
    this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
        return SenderMessageCard(
          message: messages[index]['text'].toString(),
          date: messages[index]['time'].toString(),
        );
      },
    );
  }
}
