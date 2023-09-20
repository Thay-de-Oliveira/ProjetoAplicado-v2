import 'package:flutter/material.dart';

Widget BarraSuperior(BuildContext context) {
  return Container(
    //BARRA AZUL
    width: double.infinity,
    height: 57,
    child: Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: 360,
            height: 57,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(1.00, -0.03),
                end: Alignment(-1, 0.03),
                colors: [Color(0xFF1A7CB2), Color(0xFF4BA1E0)],
              ),
            ),
          ),
        ),
        Positioned(
          //NOTIFICAÇÃO
          left: 289,
          top: 19,
          child: Container(
            width: 20,
            height: 20,
            child: Image.asset('assets/imagens/notificacao1.png'),
          ),
        ),
        Positioned(
          //SAQ
          left: 322,
          top: 19,
          child: Container(
            width: 20,
            height: 20,
            child: Image.asset('assets/imagens/saq.png'),
          ),
        ),
        Positioned(
          left: 157,
          top: 8,
          child: Container(
            width: 45,
            height: 42.49,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/imagens/logo-sem-fundo.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
