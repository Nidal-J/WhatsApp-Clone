import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          Padding(
            padding: EdgeInsets.all(10.r),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: appBarColor,
                prefixIcon: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.emoji_emotions,
                    color: grey,
                    size: 24.r,
                  ),
                ),
                suffixIcon: SizedBox(
                  width: 100.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.camera_alt,
                          color: grey,
                          size: 24.r,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.attach_file,
                          color: grey,
                          size: 24.r,
                        ),
                      ),
                      InkWell(
                        // padding: EdgeInsetsDirectional.only(end: 16.w),
                        // visualDensity: VisualDensity.compact,
                        onTap: () {},
                        child: Icon(
                          Icons.mic_rounded,
                          color: grey,
                          size: 24.r,
                        ),
                      ),
                    ],
                  ),
                ),
                hintText: 'Type a message!',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
