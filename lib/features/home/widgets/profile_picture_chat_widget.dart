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
            ClipOval(
              child: Image.network(
                url,
                height: size,
                width: size,
                errorBuilder: ((context, Object exception, stackTrace) {
                  return ClipOval(
                    child: Image.network(
                      height: size,
                      width: size,
                      "https://www.shutterstock.com/image-vector/caution-exclamation-mark-white-red-260nw-1055269061.jpg",
                      fit: BoxFit.cover,
                    ),
                  );
                }),
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
