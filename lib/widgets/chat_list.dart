import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/widgets/message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return MessageCard(
            isMe: messages[index]['isMe'],
            message: messages[index]['text'],
            date: messages[index]['time']);
        // if (messages[index]['isMe'] == true) {
        //   return ReceiverMessageCard(
        //     message: messages[index]['text'].toString(),
        //     date: messages[index]['time'].toString(),
        //   );
        // }
        // return SenderMessageCard(
        //   message: messages[index]['text'].toString(),
        //   date: messages[index]['time'].toString(),
        // );
      },
    );
  }
}
