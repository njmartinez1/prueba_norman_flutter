import 'package:flutter/material.dart';

class GoToProducts extends StatelessWidget {
  const GoToProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(13, 230, 205, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.wallet,
            color: Colors.white,
          ),
          SizedBox(width: 8.0),
          Text(
            'Ver todos mis productos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: SizedBox(),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
