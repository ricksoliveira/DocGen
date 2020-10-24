import 'package:document_generator/Buttons.dart';
import 'package:flutter/material.dart';
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
        body: SafeArea(
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
                f.spacingVertical(40.0),
                Container(
                  margin: EdgeInsets.all(30.0),
                  child: Text(rg,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}