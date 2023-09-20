import 'package:flutter/material.dart';
import 'tela-usuario.dart';

class CadastroApp extends StatefulWidget {
  @override
  _CadastroAppState createState() => _CadastroAppState();
}

class _CadastroAppState extends State<CadastroApp> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //TEXTO "NOME"
              Container(
                alignment: Alignment
                    .centerLeft, // Alinha o texto com o início do campo
                child: Text(
                  ' Nome',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 5), //Espaçamento entre o texto e o campo

              //CAMPO EMAIL
              Container(
                width: 315,
                height: 40,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.70, color: Color(0xFF091B4A)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
              SizedBox(height: 35),

              //TEXTO "NOME"
              Container(
                alignment: Alignment
                    .centerLeft, // Alinha o texto com o início do campo
                child: Text(
                  ' Email',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 5), //Espaçamento entre o texto e o campo

              //CAMPO EMAIL
              Container(
                width: 315,
                height: 40,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.70, color: Color(0xFF091B4A)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
              SizedBox(height: 35),

              //Texto "SENHA"
              Container(
                alignment: Alignment
                    .centerLeft, // Alinha o texto com o início do campo
                child: Text(
                  ' Senha',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 5), //Espaçamento entre o texto e o campo

              //CAMPO SENHA
              Container(
                width: 315,
                height: 40,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.70, color: Color(0xFF091B4A)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                ),
              ),

              SizedBox(height: 35),
              //Texto "CONFIRME SUA SENHA"
              Container(
                alignment: Alignment
                    .centerLeft, // Alinha o texto com o início do campo
                child: Text(
                  ' Confirme sua senha',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 5), //Espaçamento entre o texto e o campo

              //CAMPO CONFIRME SUA SENHA
              Container(
                width: 315,
                height: 40,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.70, color: Color(0xFF091B4A)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                ),
              ),

              SizedBox(height: 10),

              Container(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //BOTÃO LOGIN
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/tela-inicio'); //Acessa home
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff1d3484),
                        minimumSize:
                            Size(100, 40), // Largura e altura mínimas do botão
                        padding: EdgeInsets.all(
                            20.0), // Espaçamento interno do botão
                      ),
                      child: Text(
                        'Cadastrar',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),

                    SizedBox(height: 30), // Espaço entre os botões

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Você possui uma conta?",
                          style: TextStyle(
                            color: Color(0xffffffff),
                          ),
                        ),
                        TextButton(
                          child: Text(
                            "Entrar",
                            style: TextStyle(
                              color: Color(0xff1d3484),
                              fontWeight: FontWeight.bold, //Negrito
                            ),
                          ),
                          onPressed: () =>
                              {Navigator.of(context).pushNamed("/tela-login")},
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
