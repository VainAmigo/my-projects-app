import 'package:flutter/material.dart';

class EdBookCardWidget extends StatelessWidget {
  const EdBookCardWidget({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24.0),
      ),
    );
  }
}

