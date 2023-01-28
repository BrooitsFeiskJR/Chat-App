import 'package:chat_app/features/home/controller/home_controller.dart';
import 'package:chat_app/features/home/widgets/profile_picture_chat_widget.dart';
import 'package:chat_app/util/received_messages.dart';
import 'package:chat_app/util/select_chat_mark.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({
    super.key,
    required this.name,
    required this.lastName,
    required this.message,
  });
  final String name;
  final String lastName;
  final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          const SelectChat(),
          const SizedBox(
            width: 15,
          ),
          const ProfilePicture(),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                      ),
                      child: const Icon(
                        Icons.chevron_right_outlined,
                        size: 12,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      lastName,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  message,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
          const ReceivedMessages(time: "Now", count: "2"),
        ],
      ),
    );
  }
}
