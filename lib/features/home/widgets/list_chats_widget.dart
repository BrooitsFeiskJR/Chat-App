import 'package:chat_app/features/home/widgets/chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class ListChats extends GetView<HomeController> {
  const ListChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Expanded(
        child: ListView.separated(
          itemCount: controller.itemCount.value,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(controller.chats.value[index].name),
              onDismissed: (direction) {
                controller.removeChat(index);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Dismissed")),
                );
              },
              background: Container(
                alignment: Alignment.center,
                color: Colors.red,
              ),
              child: ChatContainer(
                name: controller.chats.value[index].name,
                lastName: controller.chats.value[index].lastName,
                message: controller.chats.value[index].message,
                url: controller.chats.value[index].url,
                index: index,
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 10),
        ),
      ),
    );
  }
}
