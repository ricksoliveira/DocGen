import 'Formats.dart';
import 'Buttons.dart';
import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {

  Formats f = Formats();
  Buttons b = Buttons();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[700],
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  f.spacingVertical(50.0),
                  f.spacingDivider(0.0, 250.0),
                  Container(
                    margin: EdgeInsets.all(20.0),
                    child: Text('O que é o DocGen?',
                      style: f.titleStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  b.backButton(context),
                  f.spacingDivider(30.0, 300.0),
                  Container(
                    margin: EdgeInsets.all(30.0),
                    child: Text('DocGen é um aplicativo feito por Henrique Servidoni de Oliveira'
                        ' enquanto cursava a faculdade de Análise e Desenvolvimento de Sistemas. Esta'
                        ' ferramenta gera documentos brasileiros válidos. Utilizando as regras do'
                        ' governo do Brasil para validação dos mesmos.'
                        ' \n\n'
                        'Este aplicativo NÃO realiza consulta em nenhum banco de dados, logo,'
                        ' apesar dos dados gerados serem válidos, eles não necessariamente'
                        ' pertencem à algum cidadão brasileiro e nem estão cadastrados em'
                        ' alguma base de dados do governo.'
                        ' \n\n'
                        'Abaixo estão todas as regras que o governo utiliza para a validação dos documentos,'
                        ' regras estas que este aplicativo usa para gerar os dados:',
                      style: f.subtitleStyle(),
                      textAlign: TextAlign.justify
                      ,
                    ),
                  ),
                  f.spacingDivider(0.0, 300.0),
                  f.spacingVertical(20.0),
                  Container(
                    margin: EdgeInsets.all(0.0),
                    child: Text('CPF',
                      style: f.titleStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(30.0),
                    child: Text('Regras CPF'
                        ' \n\n'
                        'Regras CPF'
                        ' \n\n'
                        'Regras CPF',
                      style: f.subtitleStyle(),
                      textAlign: TextAlign.justify
                      ,
                    ),
                  ),
                  f.spacingDivider(0.0, 300.0),
                  f.spacingVertical(20.0),
                  Container(
                    margin: EdgeInsets.all(0.0),
                    child: Text('CNPJ',
                      style: f.titleStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(30.0),
                    child: Text('Regras CNPJ'
                        ' \n\n'
                        'Regras CNPJ'
                        ' \n\n'
                        'Regras CNPJ',
                      style: f.subtitleStyle(),
                      textAlign: TextAlign.justify
                      ,
                    ),
                  ),
                  f.spacingDivider(0.0, 300.0),
                  f.spacingVertical(20.0),
                  Container(
                    margin: EdgeInsets.all(0.0),
                    child: Text('RG',
                      style: f.titleStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(30.0),
                    child: Text('Regras RG'
                        ' \n\n'
                        'Regras RG'
                        ' \n\n'
                        'Regras RG',
                      style: f.subtitleStyle(),
                      textAlign: TextAlign.justify
                      ,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}