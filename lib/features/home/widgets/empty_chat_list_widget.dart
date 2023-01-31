import 'package:chat_app/main.dart';
import 'package:flutter/material.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 140.0),
      child: Column(
        children: const [
          Text(
            "No converstaions",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("Message from all ChatGPT appear here"),
        ],
      ),
    );
  }
}
