import 'package:flutter/material.dart';

class CusttomTextGestureDetector extends StatelessWidget {
  const CusttomTextGestureDetector(
      {super.key,
      required this.onTap,
      required this.text,
      required this.color});
  final String text;
  final VoidCallback onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 14,
        ),
      ),
    );
  }
}
