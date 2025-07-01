import 'package:flutter/material.dart';
import 'package:drible_app/apps/education_app/education_app.dart';

class EdBooksHorizontalList extends StatelessWidget {
  const EdBooksHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            EdBookCardWidget(color: Colors.redAccent),
            const SizedBox(width: 8),
            EdBookCardWidget(color: Colors.yellowAccent),
            const SizedBox(width: 8),
            EdBookCardWidget(color: Colors.greenAccent),
            const SizedBox(width: 8),
            EdBookCardWidget(color: Colors.blueAccent),
          ],
        ),
      ),
    );
  }
}
