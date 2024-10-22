import 'package:flutter/material.dart';
import 'package:imc_calculator/components/button_calculate.dart';
import 'package:imc_calculator/components/gender_buttons.dart';
import 'package:imc_calculator/components/scale_height.dart';
import 'package:imc_calculator/components/weight_Height_Input.dart';
import 'package:imc_calculator/data/imc_data.dart';
import 'package:imc_calculator/pages/imc_result_page/imc_result_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC calculator',
      home: const MyHomePage(title: 'IMC calculator'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? gender = 'Masculino';
  int height = 211;
  double weight = 59;
  int age = 22;

  // pelo que pesquisei a idade seria mais um fator para informação
  // ou recomendação mas não para o calculo do IMC
  // então eu não implementei a idade
  void _calculateImc() {
    if (gender != null && height > 0 && weight > 0) {
      double imc = weight / ((height / 100) * (height / 100));
      ImcData resultado = getImcCategory(imc);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ImcResultPage(
            resultado: resultado,
            imc: imc,
          ),
        ),
      );
    }
  }

  ImcData getImcCategory(double imc) {
    if (imc < 18.5) {
      return imcResults[0]; // Magreza
    } else if (imc >= 18.5 && imc < 25) {
      return imcResults[1]; // Peso Normal
    } else if (imc >= 25 && imc < 30) {
      return imcResults[2]; // Sobrepeso
    } else if (imc >= 30 && imc < 35) {
      return imcResults[3]; // Obesidade I
    } else if (imc >= 35 && imc < 40) {
      return imcResults[4]; // Obesidade II
    } else {
      return imcResults[5]; // Obesidade III
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculador de IMC'),
        centerTitle: true,
        foregroundColor: Colors.grey[50],
        backgroundColor: Colors.black26,
      ),
      backgroundColor: const Color.fromARGB(255, 18, 29, 34),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  GenderButtons(onGenderSelected: (selectedGender) {
                    setState(() {
                      gender = selectedGender;
                    });
                  }),
                  ScaleHeight(onHeightSelected: (selectedHeight) {
                    setState(() {
                      height = selectedHeight.toInt();
                    });
                  }),
                  WeightAgeInput(onWeightSelected: (selectedWeight) {
                    setState(() {
                      weight = selectedWeight;
                    });
                  }, onAgeSelected: (selectedAge) {
                    setState(() {
                      age = selectedAge.toInt();
                    });
                  }),
                ],
              ),
            ),
            ButtonCalculate(label: 'CALCULAR', onPressed: _calculateImc),
          ],
        ),
      ),
    );
  }
}
