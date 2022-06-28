import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imc_calculator/caucula_imc.dart';
import 'package:imc_calculator/componente_base.dart';
import 'package:imc_calculator/resultado_imc.dart';

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
  double altura = 1;
  String sexo = '';
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
                        sexo = 'masculino';
                      });
                    },
                    icon: FontAwesomeIcons.mars,
                    texto: 'Masculino',
                    heigth: 155,
                    top: 45,
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
                         sexo = 'feminino';
                      });
                    },
                    icon: FontAwesomeIcons.venus,
                    texto: 'Feminino',
                    heigth: 155,
                    top: 45,
                    rigth: 10,
                    cor: generoSelecionado == Genero.feminino
                        ? corAtiva
                        : corInativa,
                  ),
                ),
              ],
            ),
          ),
         
           Expanded(
            child: ComponenteAltura(
              altura: altura,
              onMoveSlide: (double value){
                debugPrint('$value');
               setState(() {
                  altura = value;
               });
              },
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
          InkWell(
            onTap: (){
              setState(() {
                debugPrint('altura aqui $altura');
              });
              List<String> resp = CauculaImc().cauculadoraImc(altura.toDouble(), peso, idade, sexo);
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  ResultadoImc(diagnostico: resp[0],imc: resp[1],frase: resp[2],)),
            );
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 10),
              height: 80,
              color: const Color.fromARGB(255, 234, 52, 104),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Caucular seu IMC', style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
