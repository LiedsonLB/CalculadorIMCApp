import 'package:flutter/material.dart';

class ResultContainer extends StatelessWidget {
  final String typeImc;
  final double imc;
  final String description;
  final Color color;
  const ResultContainer({super.key, required this.typeImc, required this.imc, required this.description, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          typeImc,
          style: TextStyle(
            fontSize: 28,
            height: 1.5,
            fontFamily: 'Oswald',
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          imc.toStringAsFixed(1),
          style: TextStyle(
            color: Colors.grey[50],
            fontSize: 80,
            height: 1.5,
            fontFamily: 'Oswald',
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          constraints: const BoxConstraints(
            maxWidth: 250,
          ),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[50],
              fontSize: 14,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
