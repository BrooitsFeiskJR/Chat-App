import 'package:chat_app/features/home/widgets/profile_picture_chat_widget.dart';
import 'package:flutter/material.dart';

class ChatContainer extends StatefulWidget {
  const ChatContainer({super.key});

  @override
  State<ChatContainer> createState() => _ChatContainerState();
}

class _ChatContainerState extends State<ChatContainer> {
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
          Positioned(
            top: 12,
            child: Container(
              width: 5,
              height: 65,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
            ),
          ),
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
                    const Text(
                      "Andrea",
                      style: TextStyle(
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
                    const Text(
                      "Clark",
                      style: TextStyle(
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
                  "Hey, I have some ideas about it.\nDownloaded a few images from",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 65.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Now",
                  style: TextStyle(color: Colors.grey[500]),
                ),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: const Text(
                    "2",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
