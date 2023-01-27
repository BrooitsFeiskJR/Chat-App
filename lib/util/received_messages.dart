import 'package:flutter/material.dart';

class ReceivedMessages extends StatelessWidget {
  const ReceivedMessages({
    super.key,
    required this.time,
    required this.count,
  });
  final String time;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 65.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
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
            child: Text(
              count,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
