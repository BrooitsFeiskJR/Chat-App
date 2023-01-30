import 'dart:math';

import 'package:chat_app/features/Chat/chat_screen.dart';
import 'package:chat_app/features/home/widgets/profile_picture_chat_widget.dart';
import 'package:chat_app/util/received_messages.dart';
import 'package:chat_app/util/select_chat_mark.dart';
import 'package:flutter/material.dart';

class ChatContainer extends StatelessWidget {
  ChatContainer(
      {super.key,
      required this.name,
      required this.lastName,
      required this.message,
      required this.index,
      required this.url});
  final String name;
  final String lastName;
  final String message;
  final int index;
  final String url;

  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ChatScreen(
            index: index,
          ),
        ),
      ),
      child: Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  const SelectChat(),
                  const SizedBox(
                    width: 15,
                  ),
                  ProfilePicture(
                    index: index,
                    url: url,
                    size: 55,
                  ),
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
                              style: TextStyle(
                                fontSize: name.length <= 16 ? 20 : 14,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              name.length <= 11
                                  ? lastName
                                  : lastName.characters.first,
                              style: TextStyle(
                                fontSize: lastName.length <= 16 ? 20 : 14,
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: ReceivedMessages(
                  time: "Now", count: random.nextInt(9).toString()),
            ),
          ],
        ),
      ),
    );
  }
}
