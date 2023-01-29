import 'package:chat_app/features/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddChatContainer extends GetView<HomeController> {
  const AddChatContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "Adding new chat to your inbox",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        _renderTextField(
          "Name",
          "Name",
          controller.nameTextEditingController,
        ),
        const SizedBox(
          height: 10,
        ),
        _renderTextField(
          "Last name",
          "Last name",
          controller.lastNameTextEditingController,
        ),
        const SizedBox(
          height: 10,
        ),
        _renderTextField(
          "Message",
          "Message",
          controller.messageTextEditingController,
        ),
        const SizedBox(
          height: 10,
        ),
        _renderTextField(
          "Avatar",
          "Avatar URL",
          controller.urlextEditingController,
        ),
        const SizedBox(
          height: 25,
        ),
        GestureDetector(
          onTap: () {
            if (controller.nameTextEditingController.text.isNotEmpty &&
                controller.lastNameTextEditingController.text.isNotEmpty &&
                controller.messageTextEditingController.text.isNotEmpty &&
                controller.urlextEditingController.text.isNotEmpty) {
              controller.addChat(
                controller.nameTextEditingController.text,
                controller.lastNameTextEditingController.text,
                controller.messageTextEditingController.text,
                controller.urlextEditingController.text,
              );
              Navigator.pop(context);
            } else {
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text("Oops... Missing Information!"),
                  content: const Text("Please fill in all fields."),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context, "Cancel"),
                      child: const Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, "Ok"),
                      child: const Text("OK"),
                    ),
                  ],
                ),
              );
            }
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 26,
            ),
          ),
        )
      ],
    );
  }

  Widget _renderTextField(
    String hintText,
    String labeltext,
    TextEditingController currentController,
  ) {
    return TextField(
      controller: currentController,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labeltext,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        isDense: true,
      ),
    );
  }
}
