import 'package:flutter/material.dart';

class AmountDetail extends StatelessWidget {
  const AmountDetail({
    super.key,
    required this.amount,
    required this.color,
    required this.icon,
    required this.title,
  });

  final String amount;
  final Color? color;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: color,
            ),
            const SizedBox(width: 4.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                color: color,
              ),
            ),
            const SizedBox(width: 4.0),
            const Icon(
              Icons.arrow_forward_ios,
              size: 12.0,
              color: Colors.grey,
            ),
          ],
        ),
        Text(
          '\$ $amount',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
