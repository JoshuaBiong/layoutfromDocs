import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final icon;
  final text;

  const Mybutton({super.key, required this.icon, required this.text});

  final textStyle = const TextStyle(color: Colors.blue, fontSize: 13);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Text(
          text,
          style: textStyle,
        )
      ],
    );
  }
}
