import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenderButtons extends StatefulWidget {
  final ValueChanged<String> onGenderSelected;

  const GenderButtons({Key? key, required this.onGenderSelected});

  @override
  _GenderButtonsState createState() => _GenderButtonsState();
}

class _GenderButtonsState extends State<GenderButtons> {
  String selectedGender = 'Masculino';

  void selectGender(String gender) {
    setState(() {
      selectedGender = gender;
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
            // Botão feminino
            Expanded(
              flex: 1,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  setState(() {
                    selectGender('Masculino');
                    widget.onGenderSelected(selectedGender);
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: selectedGender == 'Masculino'
                        ? Colors.pink
                        : Colors.black26,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'lib/img/male.svg',
                        height: 60,
                        color: Colors.grey[50],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "HOMEM",
                        style: TextStyle(
                            color: selectedGender == 'Masculino'
                                ? Colors.grey[50]
                                : Colors.blueGrey,
                            fontWeight: FontWeight.w100,
                            height: 1.5),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),

            // Botão masculino
            Expanded(
              flex: 1,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  setState(() {
                    selectedGender = 'Feminino';
                    widget.onGenderSelected(selectedGender);
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: selectedGender == 'Feminino'
                        ? Colors.pink
                        : Colors.black26,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'lib/img/female.svg',
                        height: 60,
                        color: Colors.grey[50],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "MULHER",
                        style: TextStyle(
                            color: selectedGender == 'Feminino'
                                ? Colors.grey[50]
                                : Colors.blueGrey,
                            fontWeight: FontWeight.w100,
                            height: 1.5),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
