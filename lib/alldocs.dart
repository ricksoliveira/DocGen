import 'CNPJGenerator.dart';
import 'CPFGenerator.dart';
import 'package:flutter/material.dart';
import 'Buttons.dart';
import 'RGGenerator.dart';
import 'Formats.dart';

class Alldocs extends StatefulWidget {
  @override
  _AlldocsState createState() => _AlldocsState();
}

class _AlldocsState extends State<Alldocs> {

  Formats f = Formats();
  Buttons b = Buttons();

  String all = 'Clique no botão GERAR';

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
                  child: Text('GERAR TODOS',
                    style: f.titleStyle(),
                    textAlign: TextAlign.center,
                  ),
                ),
                b.backButton(context),
                f.spacingVertical(25.0),
                f.spacingDivider(0.0, 300.0),
                f.spacingVertical(10.0),
                Container(
                  height: 100.0,
                  width: 300.0,
                  margin: EdgeInsets.all(30.0),
                  child: Center(
                    child: Text(all,
                      style: f.titleStyle(),
                    ),
                  ),
                ),
                f.spacingVertical(10.0),
                f.spacingDivider(0.0, 300.0),
                f.spacingVertical(40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: (){
                        CPFGenerator CPFgen = CPFGenerator();
                        CNPJGenerator CNPJgen = CNPJGenerator();
                        RGGenerator RGgen = RGGenerator();
                        setState(() {
                          all = '';
                          all += CPFgen.genCPF();
                          all += '\n';
                          all += CNPJgen.genCnpj();
                          all += '\n';
                          all += RGgen.genRg();
                        });
                      },
                      child: b.generateButton(),
                    ),
                    b.clipboardButton(all),
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