import 'package:chat_app/features/home/widgets/chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class ListChats extends GetView<HomeController> {
  const ListChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Expanded(
        child: ListView.separated(
          itemCount: controller.itemCount.value,
          itemBuilder: (context, index) {
            return ChatContainer(
              name: controller.chats.value[index].name,
              lastName: controller.chats.value[index].lastName,
              message: controller.chats.value[index].message,
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 10),
        ),
      ),
    );
  }
}
