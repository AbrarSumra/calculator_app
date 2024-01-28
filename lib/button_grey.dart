import 'package:flutter/material.dart';

class CircleButtonGrey extends StatelessWidget {
  CircleButtonGrey({
    super.key,
    required this.number,
    required this.onTap,
  });

  final String number;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 95,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.shade300,
        ),
        child: Text(
          number,
          style: const TextStyle(
            fontSize: 32,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
