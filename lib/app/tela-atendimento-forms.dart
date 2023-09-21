import 'package:flutter/material.dart';

import 'components/barra-superior.dart';
import 'components/menu-inferior.dart';

import 'tela-atend-pendente.dart';
import 'tela-atend-historico.dart';

class AtendimentoForms extends StatefulWidget {
  @override
  _AtendimentoFormsState createState() => _AtendimentoFormsState();
}

class _AtendimentoFormsState extends State<AtendimentoForms> {
  //Cria as váriaveis que serão chamadas no campo Checklist
//Ao adicionar uma string com conteudo, estamos dizendo que esse conteudo deve ser mostrado como a opção primária
  String _selectedNumeroProtocoloAtendimento = 'Selecionar protocolo';
  String _selectedTipoAtendimento = 'Selecionar atendimento';
  String _selectedCanalAtendimento = 'Selecionar canal de atendimento';
  String _selectedVistoriaRealizada = 'Selecionar';
  String _selectedTipoRealizada = 'Selecionar';
  String _selectedDate = '';
  String _selectedEntregarItens = 'Selecionar';

//Ao adicionar uma condição boolean, dizemos que os campos do checklist iniciam vazios (sem seleção)
  bool isAguaSelected = false;
  bool isCestasSelected = false;
  bool isKitsSelected = false;
  bool isPastilhaSelected = false;
  bool isColchaoSelected = false;
  bool isLonaSelected = false;
  bool isCumeeiraSelected = false;
  bool isPregoParafusoSelected = false;
  bool isTelhaSelected = false;
  bool isReservatorioSelected = false;
  bool isFraldaSelected = false;

//Ao criar "List<String>", estamos passando as opções que devem ser mostradas ao clicar no campo correspondente
  List<String> numberOptions = [
    'Selecionar protocolo',
    '001',
    '002',
    '003',
    '004',
    '005'
  ];
  List<String> tipoAtendimentoOptions = [
    'Selecionar atendimento',
    'Presencial - Chapecó',
    'Presencial - Regional',
    'Presencial - Estadual',
    'Remoto',
    'Outros'
  ];
  List<String> canalAtendimentoOptions = [
    'Selecionar canal de atendimento',
    'Polícia Militar - 190',
    'Bombeiros -193',
    'Polícia Civil - 197',
    'Defesa Civil - 199',
    'Outros'
  ];
  List<String> vistoriaRealizadaOptions = ['Selecionar', 'Sim', 'Não'];
  List<String> tipoVistoriaOptions = ['Selecionar', 'Presencial', 'Remoto'];
  List<String> entragarItensOptions = ['Selecionar', 'Sim', 'Não'];

  InputDecoration _customInputDecoration(String labelText) {
    return InputDecoration(
      labelText: labelText,
      labelStyle: TextStyle(fontSize: 16), //Tamanho da fonte dos campos
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0), //Borda arredondada
      ),
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: Colors.grey), //Cor da borda quando inativo
        borderRadius: BorderRadius.circular(10.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue), //Cor da borda quando ativo
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: CustomScrollView(
        //Permite rolagem da página
        slivers: <Widget>[
          SliverAppBar(
            floating: true, // A barra irá flutuar no topo
            pinned: true, // A barra será fixa no topo
            snap: false, // Não encolherá a barra ao rolar para baixo
            expandedHeight: 50, // Aumente este valor para adicionar mais espaço
            //backgroundColor: Color(0xfff8f7f7),
            flexibleSpace: BarraSuperior(context), //Barra
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Botão CADASTRO
                    GestureDetector(
                      child: Ink(
                        decoration: ShapeDecoration(
                          //Estilo
                          color: Color(0xFFBBD8F0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            //Sombras
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 2,
                              offset: Offset(2, 2),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AtendimentoForms()));
                          },
                          child: Container(
                            width: 90,
                            height: 80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  //Icone
                                  width: 30,
                                  height: 30,
                                  child: Image.asset(
                                      'assets/imagens/icon-cadastro.png'),
                                ),
                                SizedBox(
                                    height:
                                        5.0), //Espaço entre o ícone e o texto
                                Text(
                                  'Cadastro',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    //Botão PENDENTE
                    GestureDetector(
                      child: Ink(
                        decoration: ShapeDecoration(
                          //Estilo
                          color: Color(0xffffffff),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            //Sombras
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 2,
                              offset: Offset(2, 2),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AtendimentoPendente()));
                          },
                          child: Container(
                            width: 90,
                            height: 80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  //Icone
                                  width: 30,
                                  height: 30,
                                  child: Image.asset(
                                      'assets/imagens/icon-pendente.png'),
                                ),
                                SizedBox(
                                    height:
                                        5.0), //Espaço entre o ícone e o texto
                                Text(
                                  'Pendente',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    //Botão HISTÓRICO
                    GestureDetector(
                      child: Ink(
                        decoration: ShapeDecoration(
                          //Estilo
                          color: Color(0xffffffff),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            //Sombras
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 2,
                              offset: Offset(2, 2),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TelaHistorico()));
                          },
                          child: Container(
                            width: 90,
                            height: 80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  //Icone
                                  width: 30,
                                  height: 30,
                                  child: Image.asset(
                                      'assets/imagens/icon-historico.png'),
                                ),
                                SizedBox(
                                    height:
                                        5.0), //Espaço entre o ícone e o texto
                                Text(
                                  'Histórico',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        //Campo "Número do protocolo de acontecimento"
                        DropdownButtonFormField<String>(
                          value: _selectedNumeroProtocoloAtendimento,
                          items: numberOptions.map((String option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedNumeroProtocoloAtendimento = newValue!;
                            });
                          },
                          decoration: _customInputDecoration(
                              //_customInputDecoration == deixar campo com bordas e demais design
                              'Número do protocolo de acontecimento:'),
                        ),

                        SizedBox(height: 30),

                        //Campo "Tipo de atendimento"
                        DropdownButtonFormField<String>(
                          value: _selectedTipoAtendimento,
                          items: tipoAtendimentoOptions.map((String option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedTipoAtendimento = newValue!;
                            });
                          },
                          decoration:
                              _customInputDecoration('Tipo de atendimento:'),
                        ),

                        SizedBox(height: 30),

                        //Campo "Canal da solicitação"
                        DropdownButtonFormField<String>(
                          value: _selectedCanalAtendimento,
                          items: canalAtendimentoOptions.map((String option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedCanalAtendimento = newValue!;
                            });
                          },
                          decoration: _customInputDecoration(
                              'Canal da solicitação:'), // Aplicar estilo personalizado
                        ),

                        SizedBox(height: 30),

                        //Campo "Nome do responsável no local"
                        TextFormField(
                          decoration: _customInputDecoration(
                              'Nome do responsável no local:'),
                        ),

                        SizedBox(height: 30),

                        //Campos lado a lado "Vistoria"
                        Row(
                          children: [
                            Expanded(
                              child: DropdownButtonFormField<String>(
                                value: _selectedVistoriaRealizada,
                                items: vistoriaRealizadaOptions
                                    .map((String option) {
                                  return DropdownMenuItem<String>(
                                    value: option,
                                    child: Text(option),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedCanalAtendimento = newValue!;
                                  });
                                },
                                decoration: _customInputDecoration(
                                    'Vistoria realizada?'), // Aplicar estilo personalizado
                              ),
                            ),
                            SizedBox(width: 16), // Espaçamento entre os campos
                            Expanded(
                              child: DropdownButtonFormField<String>(
                                value: _selectedTipoRealizada,
                                items: tipoVistoriaOptions.map((String option) {
                                  return DropdownMenuItem<String>(
                                    value: option,
                                    child: Text(option),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedCanalAtendimento = newValue!;
                                  });
                                },
                                decoration: _customInputDecoration(
                                    'Tipo de vistoria:'), // Aplicar estilo personalizado
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 30),

                        //Campos lado a lado "Datas"
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: _customInputDecoration(
                                    'Data da solicitação:'),
                              ),
                            ),
                            SizedBox(width: 16), // Espaçamento entre os campos
                            Expanded(
                              child: TextFormField(
                                decoration:
                                    _customInputDecoration('Data da vistoria:'),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 20),

                        //Campo com icones "Registro da vistoria"
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Registro da vistoria',
                            labelStyle: TextStyle(fontSize: 16),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .grey), // Cor da borda quando inativo
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:
                                      Colors.blue), // Cor da borda quando ativo
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(right: 16.0),
                              child: Row(
                                //Ícones
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset(
                                        'assets/imagens/icon-baixar.png'),
                                  ),
                                  Container(
                                    height: 30,
                                    child: Image.asset(
                                        'assets/imagens/icon-camera.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 30),

                        //Campo "Será entregue itens de assistencia humanitaria"
                        DropdownButtonFormField<String>(
                          value: _selectedEntregarItens,
                          items: entragarItensOptions.map((String option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedCanalAtendimento = newValue!;
                            });
                          },
                          decoration: _customInputDecoration(
                              'Será entregue itens de assistencia humanitaria?'), // Aplicar estilo personalizado
                        ),

                        SizedBox(height: 30),

                        //Campo CHECKLIST "Qyaus itens foram entregues?"
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    Colors.grey), // Cor da borda quando inativo
                            borderRadius: BorderRadius.circular(
                                10.0), // Borda arredondada
                          ),
                          child: ExpansionTile(
                            title: Row(
                              children: [
                                Text(
                                  'Quais itens foram entregues?',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            trailing:
                                Icon(Icons.arrow_drop_down), //Ícone de seta
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CheckboxListTile(
                                      title: Text('Água Potável'),
                                      value: isAguaSelected,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isAguaSelected = newValue ?? false;
                                        });
                                      },
                                    ),
                                    CheckboxListTile(
                                      title: Text('Cestas básicas'),
                                      value: isCestasSelected,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isCestasSelected = newValue ?? false;
                                        });
                                      },
                                    ),
                                    CheckboxListTile(
                                      title: Text('Kits'),
                                      value: isKitsSelected,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isKitsSelected = newValue ?? false;
                                        });
                                      },
                                    ),
                                    CheckboxListTile(
                                      title: Text(
                                          'Pastilha potabilizadora de água'),
                                      value: isPastilhaSelected,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isPastilhaSelected =
                                              newValue ?? false;
                                        });
                                      },
                                    ),
                                    CheckboxListTile(
                                      title: Text('Colchões'),
                                      value: isColchaoSelected,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isColchaoSelected = newValue ?? false;
                                        });
                                      },
                                    ),
                                    CheckboxListTile(
                                      title: Text('Lonas'),
                                      value: isLonaSelected,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isLonaSelected = newValue ?? false;
                                        });
                                      },
                                    ),
                                    CheckboxListTile(
                                      title: Text('Cumeeiras'),
                                      value: isCumeeiraSelected,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isCumeeiraSelected =
                                              newValue ?? false;
                                        });
                                      },
                                    ),
                                    CheckboxListTile(
                                      title: Text('Pregos/Parafusos'),
                                      value: isPregoParafusoSelected,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isPregoParafusoSelected =
                                              newValue ?? false;
                                        });
                                      },
                                    ),
                                    CheckboxListTile(
                                      title: Text('Telhas'),
                                      value: isTelhaSelected,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isTelhaSelected = newValue ?? false;
                                        });
                                      },
                                    ),
                                    CheckboxListTile(
                                      title: Text('Reservatórios'),
                                      value: isReservatorioSelected,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isReservatorioSelected =
                                              newValue ?? false;
                                        });
                                      },
                                    ),
                                    CheckboxListTile(
                                      title: Text('Fraldas'),
                                      value: isFraldaSelected,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isFraldaSelected = newValue ?? false;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 30),

                        //Campo de texto longo "Observações"
                        TextField(
                          decoration: _customInputDecoration('Observações'),
                          maxLines: null, // Permite múltiplas linhas
                          keyboardType: TextInputType
                              .multiline, // Define o teclado como multilinha
                          onChanged: (String value) {
                            // Aqui você pode atualizar o estado com o valor do campo de observação
                            // Exemplo: _observacoes = value;
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MenuInferior(),
    );
  }
}
