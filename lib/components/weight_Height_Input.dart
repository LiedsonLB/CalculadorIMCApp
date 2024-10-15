import 'package:flutter/material.dart';
import 'package:imc_calculator/components/input_info_increment.dart';

class WeightAgeInput extends StatefulWidget {
  final ValueChanged<double> onWeightSelected;
  final ValueChanged<double> onAgeSelected;

  const WeightAgeInput(
      {super.key, required this.onWeightSelected, required this.onAgeSelected});

  @override
  State<WeightAgeInput> createState() => _WeightAgeInputState();
}

class _WeightAgeInputState extends State<WeightAgeInput> {
  double _currentWeightValue = 59;
  int _currentAgeValue = 22;

  // Métodos para aumentar e diminuir o peso
  void _incrementWeight() {
    setState(() {
      if (_currentWeightValue < 200) {
        _currentWeightValue++;
        widget.onWeightSelected(_currentWeightValue);
      }
    });
  }

  void _decrementWeight() {
    setState(() {
      if (_currentWeightValue > 0) {
        _currentWeightValue--;
        widget.onWeightSelected(_currentWeightValue);
      }
    });
  }

  // Métodos para aumentar e diminuir a idade
  void _incrementAge() {
    setState(() {
      if (_currentAgeValue < 100) {
        _currentAgeValue++;
        widget.onAgeSelected(_currentAgeValue.toDouble());
      }
    });
  }

  void _decrementAge() {
    setState(() {
      if (_currentAgeValue > 0) {
        _currentAgeValue--;
        widget.onAgeSelected(_currentAgeValue.toDouble());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Row(
          children: [
            // Seção de peso
            Expanded(
              flex: 1,
              child: InputInfoIncrement(
                label: 'Peso',
                value: _currentWeightValue,
                onIncrement: _incrementWeight,
                onDecrement: _decrementWeight,
              ),
            ),
            const SizedBox(width: 10),

            // Seção de idade
            Expanded(
              flex: 1,
              child: InputInfoIncrement(
                label: 'Idade',
                value: _currentAgeValue.toDouble(),
                onIncrement: _incrementAge,
                onDecrement: _decrementAge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
