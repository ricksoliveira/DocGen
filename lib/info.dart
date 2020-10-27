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
                    child: Text('O CPF é formado gerando uma sequência de 9 números aleatórios de 0 a 9.'
                        '\n\nPara o primeiro dígito verificador, cada número dessa sequência é'
                        ' multiplicada pelo seu correspondente de posição da sequência pré-definida'
                        ' [10-9-8-7-6-5-4-3-2], o resultado de cada multiplicação é somado.'
                        '\n\nEssa soma total é dividida por 11, e é subtraído 11 do resto desta divisão.'
                        '\n\nCaso este resultado seja maior do que 9, o primeiro dígito é 0, caso contrário'
                        ' o dígito é o próprio resultado desta operação.'
                        '\n\nPara o último dígito verificador, é efetuado exatamente o mesmo procedimento,'
                        ' porém agora a sequência de 9 números que foi gerada aleatoriamente é de 10 números,'
                        ' uma vez que o décimo é o dígito verificador, e a sequência pré-definida passa a ser'
                        ' [11-10-9-8-7-6-5-4-3-2-].',
                      style: f.subtitleStyle(),
                      textAlign: TextAlign.justify,
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
                    child: Text('O CNPJ é formado gerando uma sequência de 8 números aleatórios de 0 a 9,'
                        ' então adicionado 0001 no final.'
                        '\n\nPara o primeiro dígito verificador, cada número dessa sequência é'
                        ' multiplicada pelo seu correspondente de posição da sequência pré-definida'
                        ' [5-4-3-2-9-8-7-6-5-4-3-2], o resultado de cada multiplicação é somado.'
                        '\n\nEssa soma total é dividida por 11.'
                        '\n\nCaso o resto desta divisão seja menor do que 2, o primeiro dígito é 0, caso contrário'
                        ' o dígito é o resultado da subtração de 11 pelo resto'
                        '\n\nPara o último dígito verificador, é efetuado exatamente o mesmo procedimento,'
                        ' porém agora a sequência de 8 números que foi gerada aleatoriamente é de 9 números,'
                        ' uma vez que o nono é o dígito verificador, e a sequência pré-definida passa a ser'
                        ' [6-5-4-3-2-9-8-7-6-5-4-3-2].',
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
                    child: Text('O RG é formado gerando uma sequência de 8 números aleatórios de 0 a 9,'
                        '\n\nPara o primeiro e único dígito verificador, cada número dessa sequência é'
                        ' multiplicada pelo seu correspondente de posição da sequência pré-definida'
                        ' [2-3-4-5-6-7-8-9], o resultado de cada multiplicação é somado.'
                        '\n\nNessa soma é adicionado o número 100 multiplicado por 0 até o 10.'
                        '\n\nCaso o resto desta soma total for igual a 0, ou seja, não haja resto. Então o dígito'
                        ' verificador é o número que 100 foi multiplicado para o resto dar zero.'
                        '\n\nCaso este número seja 10, o dígito verificador será a letra \'X\'.',
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