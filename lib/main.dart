import 'package:flutter/material.dart';
import 'home.dart';
import 'cnpj.dart';
import 'cpf.dart';
import 'rg.dart';
import 'info.dart';
import 'alldocs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/info': (context) => Information(),
        '/cnpj': (context) => Cnpj(),
        '/cpf': (context) => Cpf(),
        '/rg': (context) => Rg(),
        '/alldocs': (context) => Alldocs(),
        //ADD more routes here,
        //ADD more routes here,
        //...
      },
      debugShowCheckedModeBanner: false,
    );
  }
}