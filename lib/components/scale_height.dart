import 'package:flutter/material.dart';

class ScaleHeight extends StatefulWidget {
  final ValueChanged<double> onHeightSelected;

  const ScaleHeight({super.key, required this.onHeightSelected});

  @override
  State<ScaleHeight> createState() => _ScaleHeightState();
}

class _ScaleHeightState extends State<ScaleHeight> {
  double _currentSliderValue = 211;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
        child: Flexible(
            child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black26,
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "ALTURA",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w100,
                      height: 1.5),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      _currentSliderValue.toInt().toString(),
                      style: TextStyle(
                        color: Colors.grey[50],
                        fontSize: 40,
                        height: 1,
                        fontFamily: "Oswald",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    const Text("cm",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          height: 1,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Slider(
                      value: _currentSliderValue,
                      min: 100,
                      max: 250,
                      divisions: 250,
                      activeColor: Colors.pink,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                          widget.onHeightSelected(_currentSliderValue);
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
          ]),
        )),
      ),
    );
  }
}
