import 'dart:ffi';

import 'package:flutter/foundation.dart';

class CauculaImc{

  final String conceitoFaixaBaixa = 'Seu Imc está a baixo do recomendado. Alimente-se bem para se manter na média correta';
  final String conceitoFaixaNormal = 'Seu Imc está normal. Continue Alimente-se bem para se manter na média';
  final String conceitoFaixaUtrapassada = 'Seu Imc está a cima do ideal. Alimente-se bem para entrar na média correta';
  List<String> respostas=[];
  double imc = 0;
  String diagnostico = '';

  fazDiagnostico(diagnostic){
    if(diagnostic =="BAIXO"){
        respostas.add("BAIXO");
        respostas.add(imc.toString());
        respostas.add(conceitoFaixaBaixa);
      }else  if(diagnostic =="NORMAL"){
        respostas.add("NORMAL");
        respostas.add(imc.toString());
        respostas.add(conceitoFaixaNormal);
      } else if(diagnostic =="PRÉ OBESIDADE"){
        respostas.add("PRÉ OBESIDADE");
        respostas.add(imc.toString());
        respostas.add(conceitoFaixaUtrapassada);
      }else if(diagnostic =="OBESIDADE"){
        respostas.add("OBESIDADE");
        respostas.add(imc.toString());
        respostas.add(conceitoFaixaUtrapassada);
      }else if(diagnostic =="OBESIDADE GRAVE"){
        respostas.add("PRÉ OBESIDADE");
        respostas.add(imc.toString());
        respostas.add(conceitoFaixaUtrapassada);
      }
  }

  List<String> cauculadoraImc(double altura, int peso, int idade, String sexo){

    
    
    String stringAuxiliar = altura.toInt().toString().substring(1);
    altura = double.parse(altura.toInt().toString().substring(0,1)+"."+stringAuxiliar);
    
    imc =  peso / ( altura * altura );

    imc = double.parse(imc.toString().substring(0,5));

    if(sexo=='masculino'){
      if(idade >= 18 || idade <=24){
        if(imc < 20){
        diagnostico = 'BAIXO';
        }if(imc >= 20 && imc <=25){
          diagnostico = 'NORMAL';
        }if(imc >= 25 && imc <=30){
         diagnostico = 'PRÉ OBESIDADE';
        }
        if(imc >= 30 && imc <=40){
         diagnostico = 'OBESIDADE';
        }if(imc >40){
          diagnostico = 'OBESIDADE GRAVE';
        }
      }else if(idade >= 25 || idade <=34){
        if(imc < 21){
        diagnostico = 'BAIXO';
        }if(imc >= 21 && imc <=26){
          diagnostico = 'NORMAL';
        }if(imc >= 26 && imc <=31){
         diagnostico = 'PRÉ OBESIDADE';
        }
        if(imc >= 31 && imc <=41){
         diagnostico = 'OBESIDADE';
        }if(imc >41){
          diagnostico = 'OBESIDADE GRAVE';
        }
      }else if(idade >= 35 || idade <=44){
        if(imc < 22){
        diagnostico = 'BAIXO';
        }if(imc >= 22 && imc <=27){
          diagnostico = 'NORMAL';
        }if(imc >= 27 && imc <=32){
         diagnostico = 'PRÉ OBESIDADE';
        }
        if(imc >= 32 && imc <=42){
         diagnostico = 'OBESIDADE';
        }if(imc >42){
          diagnostico = 'OBESIDADE GRAVE';
        }
      }else if(idade >= 45 || idade <=54){
        if(imc < 23){
        diagnostico = 'BAIXO';
        }if(imc >= 23 && imc <=28){
          diagnostico = 'NORMAL';
        }if(imc >= 28 && imc <=33){
         diagnostico = 'PRÉ OBESIDADE';
        }
        if(imc >= 33 && imc <=43){
         diagnostico = 'OBESIDADE';
        }if(imc >43){
          diagnostico = 'OBESIDADE GRAVE';
        }
      }else if(idade >= 55 || idade <=64){
        if(imc < 24){
        diagnostico = 'BAIXO';
        }if(imc >= 24 && imc <=29){
          diagnostico = 'NORMAL';
        }if(imc >= 29 && imc <=34){
         diagnostico = 'PRÉ OBESIDADE';
        }
        if(imc >= 34 && imc <=44){
         diagnostico = 'OBESIDADE';
        }if(imc >44){
          diagnostico = 'OBESIDADE GRAVE';
        }
      }else if(idade >= 65){
        if(imc < 25){
        diagnostico = 'BAIXO';
        }if(imc >= 25 && imc <=30){
          diagnostico = 'NORMAL';
        }if(imc >= 30 && imc <=35){
         diagnostico = 'PRÉ OBESIDADE';
        }
        if(imc >= 35 && imc <=45){
         diagnostico = 'OBESIDADE';
        }if(imc >45){
          diagnostico = 'OBESIDADE GRAVE';
        }
      }
      fazDiagnostico(diagnostico);
    } else {///////////////////////////////////////////////DIVIS"AO DOS SEXOS/////////////////////////////////////////////////////////////////////
      if(idade >= 18 || idade <=24){
        if(imc < 19){
        diagnostico = 'BAIXO';
        }if(imc >= 19 && imc <=24){
          diagnostico = 'NORMAL';
        }if(imc >= 24 && imc <=29){
         diagnostico = 'PRÉ OBESIDADE';
        }
        if(imc >= 29 && imc <=39){
         diagnostico = 'OBESIDADE';
        }if(imc >39){
          diagnostico = 'OBESIDADE GRAVE';
        }
      }else if(idade >= 25 || idade <=34){
        if(imc < 20){
        diagnostico = 'BAIXO';
        }if(imc >= 20 && imc <=25){
          diagnostico = 'NORMAL';
        }if(imc >= 25 && imc <=30){
         diagnostico = 'PRÉ OBESIDADE';
        }
        if(imc >= 30 && imc <=40){
         diagnostico = 'OBESIDADE';
        }if(imc >40){
          diagnostico = 'OBESIDADE GRAVE';
        }
      }else if(idade >= 35 || idade <=44){
        if(imc < 21){
        diagnostico = 'BAIXO';
        }if(imc >= 21 && imc <=26){
          diagnostico = 'NORMAL';
        }if(imc >= 26 && imc <=31){
         diagnostico = 'PRÉ OBESIDADE';
        }
        if(imc >= 31 && imc <=41){
         diagnostico = 'OBESIDADE';
        }if(imc >41){
          diagnostico = 'OBESIDADE GRAVE';
        }
      }else if(idade >= 45 || idade <=54){
        if(imc < 22){
        diagnostico = 'BAIXO';
        }if(imc >= 22 && imc <=27){
          diagnostico = 'NORMAL';
        }if(imc >= 27 && imc <=32){
         diagnostico = 'PRÉ OBESIDADE';
        }
        if(imc >= 32 && imc <=42){
         diagnostico = 'OBESIDADE';
        }if(imc >42){
          diagnostico = 'OBESIDADE GRAVE';
        }
      }else if(idade >= 55 || idade <=64){
        if(imc < 23){
        diagnostico = 'BAIXO';
        }if(imc >= 23 && imc <=28){
          diagnostico = 'NORMAL';
        }if(imc >= 28 && imc <=33){
         diagnostico = 'PRÉ OBESIDADE';
        }
        if(imc >= 33 && imc <=43){
         diagnostico = 'OBESIDADE';
        }if(imc >43){
          diagnostico = 'OBESIDADE GRAVE';
        }
      }else if(idade >= 65){
        if(imc < 24){
        diagnostico = 'BAIXO';
        }if(imc >= 29 && imc <=29){
          diagnostico = 'NORMAL';
        }if(imc >= 29 && imc <=34){
         diagnostico = 'PRÉ OBESIDADE';
        }
        if(imc >= 34 && imc <=44){
         diagnostico = 'OBESIDADE';
        }if(imc >44){
          diagnostico = 'OBESIDADE GRAVE';
        }
      }

      fazDiagnostico(diagnostico);
    }
      debugPrint(respostas.toString());
      return respostas;

  }
}