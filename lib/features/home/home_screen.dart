import 'package:chat_app/features/home/widgets/chat_widget.dart';
import 'package:chat_app/features/home/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.inbox_outlined), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.public_outlined), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
      ]),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: const [
                  Header(),
                ],
              ),
            ),
            const ChatContainer(),
          ],
        ),
      ),
    );
  }
}
