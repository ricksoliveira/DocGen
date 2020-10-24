import 'package:document_generator/Buttons.dart';
import 'package:flutter/material.dart';
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
        body: SafeArea(
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
                f.spacingVertical(40.0),
                Container(
                  margin: EdgeInsets.all(30.0),
                  child: Text(cpf,
                    style: f.titleStyle(),
                  ),
                ),
                f.spacingVertical(10.0),
                f.spacingDivider(70.0, 300.0),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}