import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 55,
              width: 55,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
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
