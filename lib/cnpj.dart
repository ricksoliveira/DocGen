import 'package:document_generator/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'CNPJGenerator.dart';
import 'Formats.dart';
import 'Buttons.dart';

class Cnpj extends StatefulWidget {
  @override
  _CnpjState createState() => _CnpjState();
}

class _CnpjState extends State<Cnpj> {

  Formats f = Formats();
  Buttons b = Buttons();
  String cnpj = 'Clique no botão GERAR';

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
                  f.spacingVertical(40.0),
                  f.spacingDivider(0.0, 300.0),
                  Container(
                    margin: EdgeInsets.all(25.0),
                    child: Text('GERAR CNPJ',
                      style: f.titleStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  b.backButton(context),
                  f.spacingVertical(25.0),
                  f.spacingDivider(0.0, 300.0),
                  Container(
                    margin: EdgeInsets.all(30.0),
                    child: Text(cnpj,
                      style: f.titleStyle(),
                    ),
                  ),
                  f.spacingDivider(0.0, 300.0),
                  f.spacingVertical(20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton(
                        onPressed: (){
                          CNPJGenerator CNPJgen = CNPJGenerator();
                          setState(() {
                            cnpj = CNPJgen.genCnpj();
                          });
                        },
                        child: b.generateButton(),
                      ),
                      b.clipboardButton(cnpj),
                    ],
                  ),
                  f.spacingVertical(10.0),
                  FlatButton(
                    onPressed: (){

                      cnpj = 'CNPJ:\n';
                      for(int i=0; i<5;i++){
                        CNPJGenerator CNPJgen = CNPJGenerator();
                        cnpj += CNPJgen.genCnpj() + '\n';
                      }
                      Clipboard.setData(ClipboardData(text: cnpj));
                      cnpj = 'Clique no botão GERAR';
                      Navigator.pushNamed(context, '/generated');

                    },
                    child: Container(
                      child: b.generateXButton('5'),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){

                      cnpj = 'CNPJ:\n';
                      for(int i=0; i<10;i++){
                        CNPJGenerator CNPJgen = CNPJGenerator();
                        cnpj += CNPJgen.genCnpj() + '\n';
                      }
                      Clipboard.setData(ClipboardData(text: cnpj));
                      cnpj = 'Clique no botão GERAR';
                      Navigator.pushNamed(context, '/generated');

                    },
                    child: Container(
                      child: b.generateXButton('10'),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){

                      cnpj = 'CNPJ:\n';
                      for(int i=0; i<20;i++){
                        CNPJGenerator CNPJgen = CNPJGenerator();
                        cnpj += CNPJgen.genCnpj() + '\n';
                      }
                      Clipboard.setData(ClipboardData(text: cnpj));
                      cnpj = 'Clique no botão GERAR';
                      Navigator.pushNamed(context, '/generated');

                    },
                    child: Container(
                      child: b.generateXButton('20'),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){

                      cnpj = 'CNPJ:\n';
                      for(int i=0; i<50;i++){
                        CNPJGenerator CNPJgen = CNPJGenerator();
                        cnpj += CNPJgen.genCnpj() + '\n';
                      }
                      Clipboard.setData(ClipboardData(text: cnpj));
                      cnpj = 'Clique no botão GERAR';
                      Navigator.pushNamed(context, '/generated');

                    },
                    child: Container(
                      child: b.generateXButton('50'),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){

                      cnpj = 'CNPJ:\n';
                      for(int i=0; i<100;i++){
                        CNPJGenerator CNPJgen = CNPJGenerator();
                        cnpj += CNPJgen.genCnpj() + '\n';
                      }
                      Clipboard.setData(ClipboardData(text: cnpj));
                      cnpj = 'Clique no botão GERAR';
                      Navigator.pushNamed(context, '/generated');

                    },
                    child: Container(
                      child: b.generateXButton('100'),
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