import 'package:document_generator/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'RGGenerator.dart';
import 'Formats.dart';
import 'Buttons.dart';

class Rg extends StatefulWidget {
  @override
  _RgState createState() => _RgState();
}

class _RgState extends State<Rg> {

  Formats f = Formats();
  Buttons b = Buttons();
  String rg = 'Clique no botão GERAR';

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
                    child: Text('GERAR RG',
                      style: f.titleStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  b.backButton(context),
                  f.spacingVertical(25.0),
                  f.spacingDivider(0.0, 300.0),
                  Container(
                    margin: EdgeInsets.all(30.0),
                    child: Text(rg,
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
                          RGGenerator RGgen = RGGenerator();
                          setState(() {
                            rg = RGgen.genRg();
                          });
                        },
                        child: b.generateButton(),
                      ),
                      b.clipboardButton(rg),
                    ],
                  ),
                  f.spacingVertical(10.0),
                  FlatButton(
                    onPressed: (){

                      rg = 'RG:\n';
                      for(int i=0; i<5;i++){
                        RGGenerator RGgen = RGGenerator();
                        rg += RGgen.genRg() + '\n';
                      }
                      Clipboard.setData(ClipboardData(text: rg));
                      rg = 'Clique no botão GERAR';
                      Navigator.pushNamed(context, '/generated');

                    },
                    child: Container(
                      child: b.generateXButton('5'),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){

                      rg = 'RG:\n';
                      for(int i=0; i<10;i++){
                        RGGenerator RGgen = RGGenerator();
                        rg += RGgen.genRg() + '\n';
                      }
                      Clipboard.setData(ClipboardData(text: rg));
                      rg = 'Clique no botão GERAR';
                      Navigator.pushNamed(context, '/generated');

                    },
                    child: Container(
                      child: b.generateXButton('10'),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){

                      rg = 'RG:\n';
                      for(int i=0; i<20;i++){
                        RGGenerator RGgen = RGGenerator();
                        rg += RGgen.genRg() + '\n';
                      }
                      Clipboard.setData(ClipboardData(text: rg));
                      rg = 'Clique no botão GERAR';
                      Navigator.pushNamed(context, '/generated');

                    },
                    child: Container(
                      child: b.generateXButton('20'),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){

                      rg = 'RG:\n';
                      for(int i=0; i<50;i++){
                        RGGenerator RGgen = RGGenerator();
                        rg += RGgen.genRg() + '\n';
                      }
                      Clipboard.setData(ClipboardData(text: rg));
                      rg = 'Clique no botão GERAR';
                      Navigator.pushNamed(context, '/generated');

                    },
                    child: Container(
                      child: b.generateXButton('50'),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){

                      rg = 'RG:\n';
                      for(int i=0; i<100;i++){
                        RGGenerator RGgen = RGGenerator();
                        rg += RGgen.genRg() + '\n';
                      }
                      Clipboard.setData(ClipboardData(text: rg));
                      rg = 'Clique no botão GERAR';
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