import 'package:flutter/material.dart';

class ButtonCalculate extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const ButtonCalculate({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 60),
            backgroundColor: Colors.pink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          child: Text(
            label,
            style: TextStyle(
              color: Colors.grey[50],
            ),
          ),
        ))
      ],
    );
  }
}
