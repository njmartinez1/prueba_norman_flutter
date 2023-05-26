import 'package:flutter/material.dart';

class ToggleAmounts extends StatelessWidget {
  const ToggleAmounts({
    super.key,
    required this.onPressed,
    required this.amountsVisible,
  });

  final Function() onPressed;
  final bool amountsVisible;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: onPressed,
          splashRadius: 20.0,
          icon: Icon(
            amountsVisible
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            color: Colors.green,
            size: 28.0,
          ),
        ),
        Text(
          'Montos',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
