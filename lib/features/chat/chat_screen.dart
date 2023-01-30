import 'package:chat_app/features/chat/widgets/chat_session_widget.dart';
import 'package:chat_app/features/chat/widgets/top_bar_chat_widget.dart';
import 'package:chat_app/features/home/controller/home_controller.dart';
import 'package:chat_app/features/home/widgets/profile_picture_chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreen extends GetView<HomeController> {
  const ChatScreen({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: [
            TopBarChatScreen(index: index),
            const Chat(),
          ],
        ),
      ),
    );
  }
}
