import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/screens/mobile_chat_screen.dart';
import 'package:whatsapp_ui/screens/mobile_layout_screen.dart';
import 'package:whatsapp_ui/screens/web_layout_screen.dart';
import 'package:whatsapp_ui/utils/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(411, 820),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Whatsapp UI',
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: backgroundColor,
              iconTheme: IconThemeData(
                size: 24.r,
              ),
            ),
            // home: const ResponsiveLayout(
            //   mobileScreenLayout: MobileLayoutScreen(),
            //   webScreenLayout: WebLayoutScreen(),
            // ),
            initialRoute: 'home_screen',
            routes: {
              'home_screen': (context) => const ResponsiveLayout(
                    mobileScreenLayout: MobileLayoutScreen(),
                    webScreenLayout: WebLayoutScreen(),
                  ),
              'mobile_chat_screen': (context) => const MobileChatScreen(),
            },
          );
        });
  }
}
