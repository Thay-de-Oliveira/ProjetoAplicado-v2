import 'package:flutter/material.dart';

import 'components/barra-superior.dart';
import 'components/menu-inferior.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AcontecimentosForms(),
    );
  }
}

class AcontecimentosForms extends StatefulWidget {
  @override
  _FormularioAcontecimentoState createState() =>
      _FormularioAcontecimentoState();
}

class _FormularioAcontecimentoState extends State<AcontecimentosForms> {
  String? _selectedClasseAcontecimento;
  String? _selectedGrupo;
  String? _selectedSubGrupo;
  String? _selectedTipo;
  String? _selectedSubTipo;
  String? _selectedCobradeAutomatico;

  // Opções para a classe de acontecimento
  List<String> classeOptions = [
    'Natural',
    'Tecnológica',
    'Vistoria',
  ];

  // Opções para o grupo (dependente da classe de acontecimento)
  Map<String, List<String>> grupoOptions = {
    'Natural': [
      'Geológico',
      'Hidrológico',
      'Metereológico',
      'Climatológico',
      'Biológico'
    ],
    'Tecnológica': [
      'Substâncias Radioativos',
      'Produtos Perigosos',
      'Incêndios Urbanos',
      'Obras Civis',
      'Passageiros e Cargas não Perigosas'
    ],
    'Vistoria': ['Primeira Vistoria', 'Segunda Vistoria'],
  };

  // Opções para o subgrupo (dependente do grupo)
  Map<String, List<String>> subGrupoOptions = {
    'Geológico': [
      'Terremoto',
      'Emanação Vulcânica',
      'Movimento de Massa',
      'Erosão'
    ],
    'Hidrológico': ['Inudação', 'Enxurrada', 'Alagamento'],
    'Metereológico': [
      'Sistema de Grande Escala',
      'Tempestades',
      'Temperaturas Extremas'
    ],
    'Climatológico': ['Seca'],
    'Biológico': ['Epidemias', 'Infestação/Pragas'],
    'Substâncias Radioativos': [
      'Desastres Siderais',
      'Equipamentos Radioativos',
      'Poluíção Radioativa'
    ],
    'Produtos Perigosos': [
      'Extravasamento de Produtos',
      'Contaminação de Água',
      'Conflitos Bélicos',
      'Transporte de Produtos'
    ],
    'Incêndios Urbanos': ['Incêndios Urbanos'],
    'Obras Civis': ['Colapso de Edificações', 'Colapso de Barragens'],
    'Passageiros e Cargas não Perigosas': [
      'Trasnporte Rodoviário',
      'Transporte Ferroviário',
      'Transporte Aéreo',
      'Transporte Marítimo',
      'Transporte Aquaviário'
    ],
  };

  // Opções para o tipo (dependente do subgrupo)
  Map<String, List<String>> tipoOptions = {
    'Terremoto': ['Tremor de Terra', 'Tsunami'],
    'Emanação Vulcânica': ['EV - Tipo Não Definido (COBRADE)'],
    'Movimento de Massa': [
      'Quedas, Tombamentos e Rolamentos',
      'Deslizamentos',
      'Corridas de Massa',
      'Subsidências e Colapsos'
    ],
    'Erosão': [
      'Erosão Costeira/Marinha',
      'Erosão de Margem Fluvial',
      'Erosão Continental'
    ],
    'Inudação': ['IN - Tipo Não Definido (COBRADE)'],
    'Enxurrada': ['EN - Tipo Não Definido (COBRADE)'],
    'Alagamento': ['AL - Tipo Não Definido (COBRADE)'],
    'Sistema de Grande Escala': [
      'Ciclones',
      'Frentes Frias/Zona de Convergência'
    ],
    'Tempestades': ['Tempestade Local'],
    'Temperaturas Extremas': ['Onda de Calor', 'Onda de Frio'],
    'Seca': ['Estiagem', 'Seca', 'Incêndio Florestal', 'Baixa Umidade do Ar'],
    'Epidemias': [
      'Doenças Infecciosas Virais',
      'Doenças Infecciosas Bacterianas',
      'Doenças Infecciosas Parasíticas',
      'Doenças Infecciosas Fungicas'
    ],
    'Infestação/Pragas': [
      'Infestação de Animais',
      'Infestação de Algas',
      'Outras Infestações'
    ],
    'Desastres Siderais': ['Queda de Satélite'],
    'Equipamentos Radioativos': ['Fonte Radioativa em Produção'],
    'Poluíção Radioativa': ['Outras Fontes de contaminação'],
    'Extravasamento de Produtos': ['Através de Explosão ou Incêndio'],
    'Contaminação de Água': [
      'Produto Químico em Água Potável',
      'Contaminação de Ambientes Fluviais'
    ],
    'Conflitos Bélicos': ['Contaminação por Ações Militares'],
    'Transporte de Produtos': [
      'Transporte Rodoviário',
      'Transporte Ferroviário',
      'Transporte Aéreo',
      'Transporte Dutoviário',
      'Transporte Marítimo',
      'Transporte Aquaviário'
    ],
    'Incêndios Urbanos': [
      'Incêndios em Distritos Industriais',
      'Incêndio em Aglomerações Residênciais'
    ],
    'Colapso de Edificações': ['CE - Tipo Não Definido (COBRADE)'],
    'Colapso de Barragens': ['CB - Tipo Não Definido (COBRADE)'],
    'Transporte Rodoviário': ['TR - Tipo Não Definido (COBRADE)'],
    'Transporte Ferroviário': ['TF - Tipo Não Definido (COBRADE)'],
    'Transporte Aéreo': ['TA - Tipo Não Definido (COBRADE)'],
    'Transporte Marítimo': ['TM - Tipo Não Definido (COBRADE)'],
    'Transporte Aquaviário': ['TQ - Tipo Não Definido (COBRADE)']
  };

  // Mapeia valores para cada opção no campo "SubTipo" (Depende do "Tipo")
  Map<String, List<String>> subTipoOptions = {
    'Tremor de Terra': ['TT - SubTipo não Definido (COBRADE)'],
    'Tsunami': ['TS - SubTipo não Definido (COBRADE)'],
    'EV - Tipo Não Definido (COBRADE)': ['EV - SubTipo não Definido (COBRADE)'],
    'Quedas, Tombamentos e Rolamentos': [
      'Blocos',
      'Lascas',
      'Matações',
      'Lajes'
    ],
    'Deslizamentos': ['Deslizamentos de Solo/Rochas'],
    'Corridas de Massa': ['Solo/Lama', 'Rocha/Detrito'],
    'Subsidências e Colapsos': ['SC - SubTipo não Definido (COBRADE)'],
    'Erosão Costeira/Marinha': ['CM - SubTipo não Definido (COBRADE)'],
    'Erosão de Margem Fluvial': ['MF - SubTipo não Definido (COBRADE)'],
    'Erosão Continental': ['Laminar', 'Ravinas', 'Boçorocas'],
    'IN - Tipo Não Definido (COBRADE)': ['IN - SubTipo não Definido (COBRADE)'],
    'EN - Tipo Não Definido (COBRADE)': ['EN - SubTipo não Definido (COBRADE)'],
    'AL - Tipo Não Definido (COBRADE)': ['AL - SubTipo não Definido (COBRADE)'],
    'Ciclones': ['Ventos Costeiros', 'Marés de Tempestades'],
    'Frentes Frias/Zona de Convergência': [
      'FF - SubTipo não Definido (COBRADE)'
    ],
    'Tempestade Local': [
      'Tornados',
      'Tempestade de Raios',
      'Granizo',
      'Chuvas Intensas',
      'Vendaval'
    ],
    'Onda de Calor': ['OC - SubTipo não Definido (COBRADE)'],
    'Onda de Frio': ['Friagem', 'Geadas'],
    'Estiagem': ['ES - SubTipo não Definido (COBRADE)'],
    'Seca': ['SE - SubTipo não Definido (COBRADE)'],
    'Incêndio Florestal': [
      'Locais de Preservação/Parques',
      'Incêndios em Áreas Protegidas'
    ],
    'Baixa Umidade do Ar': ['UA - SubTipo não Definido (COBRADE)'],
    'Doenças Infecciosas Virais': ['DV - SubTipo não Definido (COBRADE)'],
    'Doenças Infecciosas Bacterianas': ['DB - SubTipo não Definido (COBRADE)'],
    'Doenças Infecciosas Parasíticas': ['DP - SubTipo não Definido (COBRADE)'],
    'Doenças Infecciosas Fungicas': ['DF - SubTipo não Definido (COBRADE)'],
    'Infestação de Animais': ['IA - SubTipo não Definido (COBRADE)'],
    'Infestação de Algas': ['Marés Vermelhas', 'Ciáno Bactéria'],
    'Outras Infestações': ['OI - SubTipo não Definido (COBRADE)'],
    'Queda de Satélite': ['QS - SubTipo não Definido (COBRADE)'],
    'Fonte Radioativa em Produção': ['FR - SubTipo não Definido (COBRADE)'],
    'Outras Fontes de contaminação': ['OC - SubTipo não Definido (COBRADE)'],
    'Através de Explosão ou Incêndio': ['AE - SubTipo não Definido (COBRADE)'],
    'Produto Químico em Água Potável': ['PQ - SubTipo não Definido (COBRADE)'],
    'Contaminação de Ambientes Fluviais': [
      'CF - SubTipo não Definido (COBRADE)'
    ],
    'Contaminação por Ações Militares': ['AM - SubTipo não Definido (COBRADE)'],
    'Transporte Rodoviário': ['PR - SubTipo não Definido (COBRADE)'],
    'Transporte Ferroviário': ['PF - SubTipo não Definido (COBRADE)'],
    'Transporte Aéreo': ['PV - SubTipo não Definido (COBRADE)'],
    'Transporte Dutoviário': ['PD - SubTipo não Definido (COBRADE)'],
    'Transporte Marítimo': ['PM - SubTipo não Definido (COBRADE)'],
    'Transporte Aquaviário': ['PA - SubTipo não Definido (COBRADE)'],
    'Incêndios em Distritos Industriais': [
      'II - SubTipo não Definido (COBRADE)'
    ],
    'Incêndio em Aglomerações Residênciais': [
      'IR - SubTipo não Definido (COBRADE)'
    ],
    'CE - Tipo Não Definido (COBRADE)': ['CE - SubTipo não Definido (COBRADE)'],
    'CB - Tipo Não Definido (COBRADE)': ['CB - SubTipo não Definido (COBRADE)'],
    'TR - Tipo Não Definido (COBRADE)': ['TR - SubTipo não Definido (COBRADE)'],
    'TF - Tipo Não Definido (COBRADE)': ['TF - SubTipo não Definido (COBRADE)'],
    'TA - Tipo Não Definido (COBRADE)': ['TA - SubTipo não Definido (COBRADE)'],
    'TM - Tipo Não Definido (COBRADE)': ['TM - SubTipo não Definido (COBRADE)'],
    'TQ - Tipo Não Definido (COBRADE)': ['TQ - SubTipo não Definido (COBRADE)']
  };

  // Mapeia valores automáticos para cada opção no campo "Tipo"
  Map<String, Map<String, String>> valoresAutomaticosTipo = {
    'TT - SubTipo não Definido (COBRADE)': {
      'Cobrade': '1.1.1.1.0',
    },
    'Tsunami': {
      'Cobrade': '1.1.1.2.0',
    },
    'EV - Tipo Não Definido (COBRADE)': {
      'Cobrade': '1.1.2.0.0',
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: BarraSuperior(context),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 70),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start, // Alinhar no topo
                children: <Widget>[
                  // Campo "Classe de acontecimento"
                  DropdownButtonFormField<String>(
                    value: _selectedClasseAcontecimento,
                    items: classeOptions.map((String option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedClasseAcontecimento = newValue!;
                        _selectedGrupo = null;
                        _selectedSubGrupo = null;
                        _selectedTipo = null;
                        _selectedSubTipo = null;
                        _selectedCobradeAutomatico = null;
                      });
                    },
                    decoration:
                        _customInputDecoration('Classe de acontecimento:'),
                  ),

                  SizedBox(height: 30), // Espaçamento de 30 pixels

                  // Campo "Grupo" (dependente da classe de acontecimento)
                  if (_selectedClasseAcontecimento != null)
                    DropdownButtonFormField<String>(
                      value: _selectedGrupo,
                      items: grupoOptions[_selectedClasseAcontecimento!]
                              ?.map((String option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            );
                          }).toList() ??
                          [],
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedGrupo = newValue;
                          _selectedSubGrupo = null;
                          _selectedTipo = null;
                          _selectedSubTipo = null;
                          _selectedCobradeAutomatico = null;
                        });
                      },
                      decoration: _customInputDecoration('Grupo:'),
                    ),

                  SizedBox(height: 30), // Espaçamento de 30 pixels

                  // Campo "Subgrupo" (dependente do grupo)
                  if (_selectedGrupo != null)
                    DropdownButtonFormField<String>(
                      value: _selectedSubGrupo,
                      items: subGrupoOptions[_selectedGrupo!]
                              ?.map((String option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            );
                          }).toList() ??
                          [],
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedSubGrupo = newValue;
                          _selectedTipo = null;
                          _selectedSubTipo = null;
                          _selectedCobradeAutomatico = null;
                        });
                      },
                      decoration: _customInputDecoration('Subgrupo:'),
                    ),

                  SizedBox(height: 30), // Espaçamento de 30 pixels

                  // Campo "Tipo" (dependente do subgrupo)
                  if (_selectedSubGrupo != null)
                    DropdownButtonFormField<String>(
                      value: _selectedTipo,
                      items:
                          tipoOptions[_selectedSubGrupo!]?.map((String option) {
                                return DropdownMenuItem<String>(
                                  value: option,
                                  child: Text(option),
                                );
                              }).toList() ??
                              [],
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedTipo = newValue;
                          _selectedSubTipo = null;
                          _selectedCobradeAutomatico = null;
                        });

                        // Verificar se deve preencher automaticamente
                        if (_selectedTipo != null &&
                            valoresAutomaticosTipo.containsKey(_selectedTipo)) {
                          setState(() {
                            _selectedSubTipo = valoresAutomaticosTipo[
                                _selectedTipo]!['SubTipo'];
                            _selectedCobradeAutomatico = valoresAutomaticosTipo[
                                _selectedTipo]!['Cobrade'];
                          });
                        }
                      },
                      decoration: _customInputDecoration('Tipo:'),
                    ),

                  SizedBox(height: 30), // Espaçamento de 30 pixels

                  // Campo "Subtipo" (dependente do tipo)
                  if (_selectedTipo != null)
                    DropdownButtonFormField<String>(
                      value: _selectedSubTipo,
                      items:
                          subTipoOptions[_selectedTipo!]?.map((String option) {
                                return DropdownMenuItem<String>(
                                  value: option,
                                  child: Text(option),
                                );
                              }).toList() ??
                              [],
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedSubTipo = newValue;
                        });
                      },
                      decoration: _customInputDecoration('Subtipo:'),
                    ),

                  SizedBox(height: 30), // Espaçamento de 30 pixels

                  // Campo "Cobrade" preenchido automaticamente
                  if (_selectedCobradeAutomatico != null)
                    TextFormField(
                      initialValue: _selectedCobradeAutomatico,
                      readOnly: true,
                      decoration: _customInputDecoration('Info Cobrade:'),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: MenuInferior(),
    );
  }

  InputDecoration _customInputDecoration(String labelText) {
    return InputDecoration(
      labelText: labelText,
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.all(10.0),
    );
  }
}
