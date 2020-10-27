import 'Formats.dart';
import 'Buttons.dart';
import 'package:flutter/material.dart';
import 'CNPJGenerator.dart';
import 'CPFGenerator.dart';
import 'RGGenerator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Formats f = Formats();
  Buttons b = Buttons();
  CNPJGenerator CNPJgen = CNPJGenerator();
  CPFGenerator CPFgen = CPFGenerator();
  RGGenerator RGgen = RGGenerator();

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
                  f.spacingVertical(20.0),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    child: Text('DocGen',
                      style: f.titleStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  f.spacingDivider(0.0, 250.0),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    child: Text('GERADOR \n DE \n DOCUMENTOS',
                      style: f.titleStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  f.spacingDivider(0.0, 300.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/info');
                        },
                        child: Icon(Icons.info,
                          color: Colors.white70,
                        ),
                      ),
                      f.spacingHorizontal(20.0),
                    ],
                  ),
                  f.spacingVertical(40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      b.docButton('CPF', context, '/cpf'),
                      b.docButton('CNPJ', context, '/cnpj'),
                      b.docButton('RG', context, '/rg'),
                    ],
                  ),
                  f.spacingVertical(40.0),
                  b.allThreeButton(context, '/alldocs'),
                  f.spacingVertical(20.0),
                  // FlatButton(
                  //   onPressed: (){
                  //     RGgen.genRg();
                  //   },
                  //   child: Container(
                  //     height: 50.0,
                  //     color: Colors.orange,
                  //     child: Text('DEBUGADOR',
                  //       style: TextStyle(
                  //         color: Colors.black,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}