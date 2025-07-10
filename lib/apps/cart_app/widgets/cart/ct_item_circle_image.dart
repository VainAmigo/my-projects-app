import 'package:flutter/material.dart';

class CtItemCircleImage extends StatelessWidget {
  const CtItemCircleImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: Colors.white,
        child: Image.asset(
          imageUrl,
          width: 35,
          height: 35,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
