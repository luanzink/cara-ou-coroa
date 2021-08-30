import 'dart:math';

import 'package:cara_ou_coroa/Resultado.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  void _exibirRescultado(){

    var itens =["cara", "coroa"];
    var numero = Random().nextInt(2);

    var resultado = itens[numero];

  Navigator.push(context, MaterialPageRoute(
    builder: (context)=>Resultado(resultado)
  ));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset("./lib/images/logo.png"),
          GestureDetector(
            onTap: _exibirRescultado,
            child: Image.asset("./lib/images/botao_jogar.png"),
          ),
        ],
      ),
      ),
    );
  }
}
