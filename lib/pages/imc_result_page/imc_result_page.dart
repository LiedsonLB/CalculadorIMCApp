import 'package:flutter/material.dart';
import 'package:imc_calculator/components/button_calculate.dart';
import 'package:imc_calculator/data/imc_data.dart';
import 'package:imc_calculator/main.dart';
import 'package:imc_calculator/pages/imc_result_page/components/result_container.dart';

class ImcResultPage extends StatefulWidget {
  final ImcData resultado;
  final double imc;

  const ImcResultPage({Key? key, required this.resultado, required this.imc})
      : super(key: key);

  @override
  _ImcResultPageState createState() => _ImcResultPageState();
}

class _ImcResultPageState extends State<ImcResultPage> {
  @override
  void initState() {
    super.initState();
    print(
      'IMC: ${widget.imc}\n',
    );
    print(
      'Resultado: ${widget.resultado.nome}',
    );
    print(
      'Resultado: ${widget.resultado.valor}',
    );
    print(
      'Resultado: ${widget.resultado.descricao}',
    );
  }

  void _backInitialPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyApp()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 29, 34),
      appBar: AppBar(
        title: const Text('Calculador de IMC'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.black26,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text(
                          'Seu resultado',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey[50],
                            fontSize: 28,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black26,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30),
                            child: ResultContainer(
                                typeImc: widget.resultado.nome,
                                imc: widget.imc,
                                description: widget.resultado.descricao,
                                color: widget.resultado.cor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ButtonCalculate(
              label: 'CALCULAR NOVAMENTE', onPressed: _backInitialPage),
        ],
      ),
    );
  }
}
