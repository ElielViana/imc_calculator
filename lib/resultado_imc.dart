import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:imc_calculator/pagina_entrada.dart';


class ResultadoImc extends StatefulWidget {
  final String diagnostico;
  final String imc;
  final String frase;

  const ResultadoImc({
    required this.diagnostico,
    required this.frase,
    required this.imc,
    Key? key}) : super(key: key);

  @override
  State<ResultadoImc> createState() => _ResultadoImcState();
}

class _ResultadoImcState extends State<ResultadoImc> {
  late Size dimensaoTela;
  @override
  Widget build(BuildContext context) {
    dimensaoTela =  MediaQuery.of(context).size;
    return Scaffold(
     
      backgroundColor: const Color(0xFF0A0E21),
      body: Column(
        children: [
          Expanded(
            child: Container(
              
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text('Seu resultado',style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                        color: Colors.white,
                    ),),
                    SizedBox(height: 30,),
                    Text(widget.diagnostico,style: TextStyle(//diagnostico
                      color: Colors.green,
                      fontWeight: FontWeight.w600
                    ),),
                    SizedBox(height: 20,),
                    Text(widget.imc.toString(),style: TextStyle(//resultado IMC
                        color: Colors.white,
                      fontSize: 50,
                      
                    ),
                    ),
                     SizedBox(height: 20,),
                     Text(widget.frase, textAlign: TextAlign.center,style: TextStyle(
                      
                      color: Colors.grey,
                      fontWeight: FontWeight.w600
                    ),),
                    SizedBox(height: 20,),
                   ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
           
            },
            child: Container(
              height: dimensaoTela.height * 0.10,
            width: dimensaoTela.width,
              
             
              color: const Color.fromARGB(255, 234, 52, 104),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Recaulcular IMC', style: TextStyle(
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