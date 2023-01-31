import 'package:chat_app/features/home/controller/home_controller.dart';
import 'package:chat_app/features/home/home_screen.dart';
import 'package:chat_app/features/home/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// sk-t86H1eh73m5y8EmHPpVxT3BlbkFJva9nsIQOtzsaxQMmLI8
class ChatApp extends GetView<HomeController> {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
