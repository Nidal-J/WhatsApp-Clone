import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_ui/colors.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    Key? key,
    required this.isMe,
    required this.message,
    required this.date,
  }) : super(key: key);
  final bool isMe;
  final String message;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe
          ? AlignmentDirectional.centerEnd
          : AlignmentDirectional.centerStart,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.only(
              topEnd: isMe ? Radius.zero : Radius.circular(16.r),
              topStart: isMe ? Radius.circular(16.r) : Radius.zero,
              bottomStart: Radius.circular(16.r),
              bottomEnd: Radius.circular(16.r),
            ),
          ),
          color: isMe ? senderMessageColor : receiverMessageColor,
          margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.r),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 10.w,
                  top: 5.h,
                  end: 30.w,
                  bottom: 20.h,
                ),
                child: Text(
                  message,
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
              ),
              PositionedDirectional(
                bottom: 4.h,
                end: 10.w,
                child: Row(
                  children: [
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.white60,
                      ),
                    ),
                    Visibility(
                      visible: isMe,
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(start: 5.w),
                        child: Icon(
                          Icons.done_all,
                          size: 20.r,
                          color: Colors.white60,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
