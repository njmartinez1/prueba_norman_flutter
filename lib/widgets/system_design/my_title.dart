import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32.0,
        bottom: 16.0,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
          color: Colors.grey[800],
        ),
      ),
    );
  }
}
