import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/screens/mobile_chat_screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 10.h),
      // shrinkWrap: true,
      itemCount: info.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('mobile_chat_screen');
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: ListTile(
                  // minVerticalPadding: ,
                  // horizontalTitleGap: ,
                  title: Text(
                    info[index]['name']!,
                    style: TextStyle(
                      fontSize: 18.sp,
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 6.h),
                    child: Text(
                      info[index]['message']!,
                      style: TextStyle(fontSize: 15.sp),
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      info[index]['profilePic']!,
                    ),
                    radius: 30.r,
                  ),
                  trailing: Text(
                    info[index]['time']!,
                    style: TextStyle(
                      color: grey,
                      fontSize: 13.sp,
                    ),
                  ),
                ),
              ),
            ),
            Divider(color: dividerColor, indent: 85.w),
          ],
        );
      },
    );
  }
}
