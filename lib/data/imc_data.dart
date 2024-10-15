import 'package:flutter/material.dart';

class ImcData {
  final String nome;
  final String valor;
  final String descricao;
  final Color cor;

  ImcData({
    required this.nome,
    required this.valor,
    required this.descricao,
    required this.cor,
  });
}

List<ImcData> imcResults = [
  ImcData(
    nome: 'Magreza',
    valor: 'Menor que 18.5',
    descricao: 'A sua análise de IMC indica um estado de magreza. É importante manter uma alimentação equilibrada e consultar um profissional de saúde para orientações adequadas.',
    cor: Colors.lightBlue,
  ),
  ImcData(
    nome: 'Peso Normal',
    valor: '18.5 - 24.9',
    descricao: 'Parabéns! Seu IMC está dentro da faixa saudável. Continue mantendo uma alimentação equilibrada e praticando atividades físicas regularmente.',
    cor: Colors.green,
  ),
  ImcData(
    nome: 'Sobrepeso',
    valor: '25.0 - 29.9',
    descricao: 'Seu IMC indica que você está acima do peso ideal. Considerar mudanças na dieta e aumentar a atividade física pode ser benéfico para sua saúde.',
    cor: Colors.yellow,
  ),
  ImcData(
    nome: 'Obesidade I',
    valor: '30.0 - 34.9',
    descricao: 'O seu IMC sugere obesidade leve. É aconselhável buscar ajuda de um profissional de saúde para elaborar um plano de emagrecimento adequado.',
    cor: Colors.orange,
  ),
  ImcData(
    nome: 'Obesidade II',
    valor: '35.0 - 39.9',
    descricao: 'Seu IMC indica obesidade moderada. Consultar um médico ou nutricionista é essencial para gerenciar seu peso de forma saudável.',
    cor: Colors.red,
  ),
  ImcData(
    nome: 'Obesidade III',
    valor: '40.0 ou mais',
    descricao: 'Seu IMC sugere obesidade severa. É fundamental procurar orientação médica para avaliação e tratamento adequado.',
    cor: Colors.red.shade900,
  ),
];
