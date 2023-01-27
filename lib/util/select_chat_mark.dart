import 'package:flutter/material.dart';

class SelectChat extends StatelessWidget {
  const SelectChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}
