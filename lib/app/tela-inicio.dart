import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/barra-superior.dart';
import 'components/menu-inferior.dart';
import 'tela-login.dart';
import 'tela-inicio.dart';
import 'tela-atendimento-forms.dart';
import 'tela-acontecimentos-forms.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.grey[200], // Cor de fundo cinza claro
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height:
                      80, // Define o espaço de 20 pixels abaixo do Container
                ),
                Center(
                  // Acontecimentos
                  child: InkWell(
                    onTap: () {
                      // Navegar para a tela de Acontecimentos
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AcontecimentosForms(),
                        ),
                      );
                    },
                    child: Container(
                      width: 330,
                      height: 85,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFEEEEFF)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x7FB0DCEE),
                            blurRadius: 8,
                            offset: Offset(1, 1),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(width: 20),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/imagens/chuva-icone.png',
                                width: 30,
                                height: 30,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Acontecimentos',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height:
                      15, // Define o espaço de 20 pixels abaixo do Container
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      // Navegue para a tela de Atendimento
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AtendimentoForms(),
                        ),
                      );
                    },
                    // Atendimentos
                    child: Container(
                      width: 330,
                      height: 85,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFEEEEFF)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x7FB0DCEE),
                            blurRadius: 8,
                            offset: Offset(1, 1),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.start, // Alinha à esquerda
                        children: <Widget>[
                          SizedBox(
                              width:
                                  20), // Espaço entre o círculo e o Container
                          Container(
                            width: 50, // Largura do círculo
                            height: 50, // Altura do círculo
                            decoration: BoxDecoration(
                              color: Colors.greenAccent, // Cor verde
                              shape: BoxShape.circle, // Formato de círculo
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/imagens/fone-icone.png', // Insira o caminho da imagem
                                width: 30, // Largura da imagem
                                height: 30, // Altura da imagem
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ), // Espaço entre o círculo e o Texto
                          Text(
                            'Atendimentos',
                            style: TextStyle(
                              color: Colors.black, // Cor do texto
                              fontSize: 16, // Tamanho do texto
                              fontWeight: FontWeight.bold, // Peso da fonte
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height:
                      15, // Define o espaço de 20 pixels abaixo do Container
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      // Navegue para a tela de cadastro do cidadão
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AtendimentoForms(),
                        ),
                      );
                    },
                    // Cadastro do Cidadão
                    child: Container(
                      width: 330,
                      height: 85,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFEEEEFF)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x7FB0DCEE),
                            blurRadius: 8,
                            offset: Offset(1, 1),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.start, // Alinha à esquerda
                        children: <Widget>[
                          SizedBox(
                              width:
                                  20), // Espaço entre o círculo e o Container
                          Container(
                            width: 50, // Largura do círculo
                            height: 50, // Altura do círculo
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent, // Cor laranja
                              shape: BoxShape.circle, // Formato de círculo
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/imagens/cadastro-icone.png', // Insira o caminho da imagem
                                width: 30, // Largura da imagem
                                height: 30, // Altura da imagem
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ), // Espaço entre o círculo e o Texto
                          Text(
                            'Cadastro de Cidadão',
                            style: TextStyle(
                              color: Colors.black, // Cor do texto
                              fontSize: 16, // Tamanho do texto
                              fontWeight: FontWeight.bold, // Peso da fonte
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height:
                      15, // Define o espaço de 20 pixels abaixo do Container
                ),
                Center(
                  // Relatórios
                  child: InkWell(
                    onTap: () {
                      // Navegue para a tela de cadastro do cidadão
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AtendimentoForms(),
                        ),
                      );
                    },
                    child: Container(
                      width: 330,
                      height: 85,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFEEEEFF)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x7FB0DCEE),
                            blurRadius: 8,
                            offset: Offset(1, 1),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.start, // Alinha à esquerda
                        children: <Widget>[
                          SizedBox(
                              width:
                                  20), // Espaço entre o círculo e o Container
                          Container(
                            width: 50, // Largura do círculo
                            height: 50, // Altura do círculo
                            decoration: BoxDecoration(
                              color: Colors.yellowAccent, // Cor amarelo
                              shape: BoxShape.circle, // Formato de círculo
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/imagens/relatórios-icone.png', // Insira o caminho da imagem
                                width: 30, // Largura da imagem
                                height: 30, // Altura da imagem
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ), // Espaço entre o círculo e o Texto
                          Text(
                            'Relatórios',
                            style: TextStyle(
                              color: Colors.black, // Cor do texto
                              fontSize: 16, // Tamanho do texto
                              fontWeight: FontWeight.bold, // Peso da fonte
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: BarraSuperior(context),
          ),
        ],
      ),
      bottomNavigationBar: MenuInferior(),
    );
  }
}
