import 'Formats.dart';
import 'Buttons.dart';
import 'package:flutter/material.dart';

class Generated extends StatefulWidget {
  @override
  _GeneratedState createState() => _GeneratedState();
}

class _GeneratedState extends State<Generated> {

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
                  f.spacingVertical(70.0),
                  f.spacingDivider(0.0, 300.0),
                  Container(
                    margin: EdgeInsets.all(20.0),
                    child: Text('Documentos gerados com sucesso e copiados para o clipboard!',
                      style: f.titleStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  b.backButton(context),
                  f.spacingDivider(30.0, 300.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}