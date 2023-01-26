import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Inbox",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Icon(
              Icons.tune_outlined,
              size: 28,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Row(
              children: [
                Icon(Icons.search_outlined, color: Colors.grey[500]),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  "Search",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
