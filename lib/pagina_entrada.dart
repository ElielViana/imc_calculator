import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_widget.dart';

class PaginaEntrada extends StatefulWidget {
  const PaginaEntrada({Key? key}) : super(key: key);

  @override
  State<PaginaEntrada> createState() => _PaginaEntradaState();
}

class _PaginaEntradaState extends State<PaginaEntrada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: CardWidget(
                    icon: FontAwesomeIcons.mars,
                    texto: 'Masculino',
                    bottom: null,
                    heigth: 150,
                    top: 50,
                    left: 10,
                    rigth: 5,
                    cor: Color.fromARGB(255, 40, 43, 75),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    icon: FontAwesomeIcons.venus,
                    texto: 'Feminino',
                    bottom: null,
                    heigth: 150,
                    top: 50,
                    left: 5,
                    rigth: 10,
                    cor: Color.fromARGB(255, 40, 43, 75),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: CardWidget(
                icon: null,
                texto: null,
                bottom: 20,
                heigth: null,
                top: null,
                left: 10,
                rigth: 10,
                cor: Color.fromARGB(255, 21, 27, 58)),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: CardWidget(
                      icon: null,
                      texto: null,
                      bottom: 20,
                      heigth: null,
                      top: 5,
                      left: 10,
                      rigth: 5,
                      cor: Color.fromARGB(255, 21, 27, 58)),
                ),
                Expanded(
                  child: CardWidget(
                      icon: null,
                      texto: null,
                      bottom: 20,
                      heigth: null,
                      top: 5,
                      left: 5,
                      rigth: 10,
                      cor: Color.fromARGB(255, 21, 27, 58)),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 80,
            color: const Color.fromARGB(255, 234, 52, 104),
          )
        ],
      ),
    );
  }
}
