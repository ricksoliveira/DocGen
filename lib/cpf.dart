import 'package:document_generator/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'CPFGenerator.dart';
import 'Formats.dart';
import 'Buttons.dart';

class Cpf extends StatefulWidget {
  @override
  _CpfState createState() => _CpfState();
}

class _CpfState extends State<Cpf> {

  Formats f = Formats();
  Buttons b = Buttons();
  String cpf = 'Clique no botão GERAR';

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
                    child: Text('GERAR CPF',
                      style: f.titleStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  b.backButton(context),
                  f.spacingVertical(25.0),
                  f.spacingDivider(0.0, 300.0),
                  Container(
                    margin: EdgeInsets.all(30.0),
                    child: Text(cpf,
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
                          CPFGenerator CPFgen = CPFGenerator();
                          setState(() {
                            cpf = CPFgen.genCPF();
                          });
                        },
                        child: b.generateButton(),
                      ),
                      b.clipboardButton(cpf),
                    ],
                  ),
                  f.spacingVertical(10.0),
                  FlatButton(
                    onPressed: (){

                      cpf = 'CPF:\n';
                      for(int i=0; i<5;i++){
                        CPFGenerator CPFgen = CPFGenerator();
                        cpf += CPFgen.genCPF() + '\n';
                      }
                      Clipboard.setData(ClipboardData(text: cpf));
                      cpf = 'Clique no botão GERAR';
                      Navigator.pushNamed(context, '/generated');

                    },
                    child: Container(
                      child: b.generateXButton('5'),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){

                      cpf = 'CPF:\n';
                      for(int i=0; i<10;i++){
                        CPFGenerator CPFgen = CPFGenerator();
                        cpf += CPFgen.genCPF() + '\n';
                      }
                      Clipboard.setData(ClipboardData(text: cpf));
                      cpf = 'Clique no botão GERAR';
                      Navigator.pushNamed(context, '/generated');

                    },
                    child: Container(
                      child: b.generateXButton('10'),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){

                      cpf = 'CPF:\n';
                      for(int i=0; i<20;i++){
                        CPFGenerator CPFgen = CPFGenerator();
                        cpf += CPFgen.genCPF() + '\n';
                      }
                      Clipboard.setData(ClipboardData(text: cpf));
                      cpf = 'Clique no botão GERAR';
                      Navigator.pushNamed(context, '/generated');

                    },
                    child: Container(
                      child: b.generateXButton('20'),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){

                      cpf = 'CPF:\n';
                      for(int i=0; i<50;i++){
                        CPFGenerator CPFgen = CPFGenerator();
                        cpf += CPFgen.genCPF() + '\n';
                      }
                      Clipboard.setData(ClipboardData(text: cpf));
                      cpf = 'Clique no botão GERAR';
                      Navigator.pushNamed(context, '/generated');

                    },
                    child: Container(
                      child: b.generateXButton('50'),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){

                      cpf = 'CPF:\n';
                      for(int i=0; i<100;i++){
                        CPFGenerator CPFgen = CPFGenerator();
                        cpf += CPFgen.genCPF() + '\n';
                      }
                      Clipboard.setData(ClipboardData(text: cpf));
                      cpf = 'Clique no botão GERAR';
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