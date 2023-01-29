import 'package:chat_app/features/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePicture extends GetView<HomeController> {
  ProfilePicture({super.key, required this.index});

  int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: () => controller.removeChat(index),
              child: Container(
                height: 55,
                width: 55,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 8,
              top: 1,
              child: Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.green),
              ),
            ),
          ],
        )
      ],
    );
  }
}
