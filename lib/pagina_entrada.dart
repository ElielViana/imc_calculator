import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imc_calculator/componente_base.dart';

import 'botao_composicao.dart';
import 'card_widget.dart';
import 'componente_altura.dart';

class PaginaEntrada extends StatefulWidget {
  const PaginaEntrada({Key? key}) : super(key: key);

  @override
  State<PaginaEntrada> createState() => _PaginaEntradaState();
}

enum Genero { masculino, feminino }

class _PaginaEntradaState extends State<PaginaEntrada> {
  Color corInativa = const Color.fromARGB(255, 21, 27, 58);
  Genero? generoSelecionado;
  Color corAtiva = const Color.fromARGB(255, 40, 43, 75);
  int idade = 0;
  int peso = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        title: const Text('CALCULADORA DE IMC'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardWidget(
                    onPress: () {
                      setState(() {
                        generoSelecionado = Genero.masculino;
                      });
                    },
                    icon: FontAwesomeIcons.mars,
                    texto: 'Masculino',
                    heigth: 155,
                    top: 52,
                    left: 10,
                    rigth: 5,
                    cor: generoSelecionado == Genero.masculino
                        ? corAtiva
                        : corInativa,
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    onPress: () {
                      setState(() {
                        generoSelecionado = Genero.feminino;
                      });
                    },
                    icon: FontAwesomeIcons.venus,
                    texto: 'Feminino',
                    heigth: 155,
                    top: 52,
                    rigth: 10,
                    cor: generoSelecionado == Genero.feminino
                        ? corAtiva
                        : corInativa,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ComponenteAltura(
              bottom: 20,
              left: 10,
              rigth: 10,
              cor: Color.fromARGB(255, 21, 27, 58),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ComponenteBase(
                    buttonMinus: BotaoComposicao(
                      icone: FontAwesomeIcons.minus,
                      cor: const Color.fromARGB(255, 34, 40, 69),
                      metodo: () {
                        setState(() {
                          peso--;
                        });
                      },
                    ),
                    buttonPlus: BotaoComposicao(
                      icone: FontAwesomeIcons.plus,
                      cor: const Color.fromARGB(255, 34, 40, 69),
                      metodo: () {
                        setState(() {
                          peso++;
                        });
                      },
                    ),
                    texto: 'Peso',
                    texto2: peso.toString(),
                    bottom: 20,
                    top: 5,
                    left: 10,
                    cor: const Color.fromARGB(255, 21, 27, 58),
                  ),
                ),
                Expanded(
                  child: ComponenteBase(
                    buttonMinus: BotaoComposicao(
                      icone: FontAwesomeIcons.minus,
                      cor: const Color.fromARGB(255, 34, 40, 69),
                      metodo: () {
                        setState(() {
                          idade--;
                        });
                      },
                    ),
                    buttonPlus: BotaoComposicao(
                      icone: FontAwesomeIcons.plus,
                      cor: const Color.fromARGB(255, 34, 40, 69),
                      metodo: () {
                        setState(() {
                          idade++;
                        });
                      },
                    ),
                    texto: 'Idade',
                    texto2: idade.toString(),
                    bottom: 20,
                    top: 5,
                    left: 5,
                    rigth: 10,
                    cor: const Color.fromARGB(255, 21, 27, 58),
                  ),
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
