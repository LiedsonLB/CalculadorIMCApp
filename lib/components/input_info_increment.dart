import 'package:flutter/material.dart';

class InputInfoIncrement extends StatelessWidget {
  final String label;
  final double value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const InputInfoIncrement({
    Key? key,
    required this.label,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black26,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label.toUpperCase(),
            style: const TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.w100,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            value.toInt().toString(),
            style: TextStyle(
              color: Colors.grey[50],
              fontSize: 40,
              height: 1,
              fontFamily: "Oswald",
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  autofocus: true,
                  onPressed: onDecrement,
                  icon: const Icon(Icons.remove, color: Colors.white),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: onIncrement,
                  icon: const Icon(Icons.add, color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
