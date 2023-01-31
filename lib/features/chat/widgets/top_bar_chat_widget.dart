import 'package:chat_app/features/home/controller/home_controller.dart';
import 'package:chat_app/features/home/widgets/profile_picture_chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopBarChatScreen extends GetView<HomeController> {
  TopBarChatScreen({super.key, required this.index});
  int index;

  @override
  Widget build(BuildContext context) {
    final fullname =
        "${controller.chats.value[index].name} ${controller.chats.value[index].lastName}";
    final onlyFirstName =
        "${controller.chats.value[index].name} ${controller.chats.value[index].lastName.characters.first}";
    return Padding(
      padding: const EdgeInsets.only(
        top: 25.0,
        bottom: 25.0,
        left: 12,
        right: 12,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ProfilePicture(
                    index: index,
                    url: controller.chats.value[index].url,
                    size: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    fullname.length < 16 ? fullname : onlyFirstName,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  _optionsIcon(Icons.call_outlined),
                  const SizedBox(
                    width: 12,
                  ),
                  _optionsIcon(Icons.video_call),
                  const SizedBox(
                    width: 12,
                  ),
                  _optionsIcon(Icons.more_vert_outlined),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _optionsIcon(IconData icon) {
    return Icon(
      icon,
      color: Colors.white,
    );
  }
}
