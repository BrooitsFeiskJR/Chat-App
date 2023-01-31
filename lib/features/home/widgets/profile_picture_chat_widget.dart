import 'package:chat_app/features/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePicture extends GetView<HomeController> {
  ProfilePicture({
    super.key,
    required this.index,
    required this.url,
    required this.size,
  });

  int index;
  String url;
  double? size;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: () => controller.removeChat(index),
              child: Container(
                height: size,
                width: size,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(url),
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
