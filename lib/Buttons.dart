import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Formats.dart';

class Buttons{

  Formats f = Formats();

  Widget docButton(String title, BuildContext context, String route){
    return FlatButton(
      onPressed: (){
        Navigator.pushNamed(context, route);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 80.0,
        width: 80.0,
        child: Center(
          child: Text(title,
            style: TextStyle(
              color: Colors.deepPurple[900],
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget backButton(BuildContext context){
    return FlatButton(
      onPressed: (){
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(5.0),
        ),
        height: 40.0,
        width: 130.0,
        child: Row(
          children: [
            Icon(Icons.arrow_back,
              color: Colors.deepPurple[900],
            ),
            f.spacingHorizontal(15.0),
            Center(
              child: Text('VOLTAR',
                style: TextStyle(
                  color: Colors.deepPurple[900],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget generateButton(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 80.0,
      width: 170.0,
      child: Center(
        child: Text('GERAR',
          style: TextStyle(
            color: Colors.deepPurple[900],
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
      ),
    );
  }

  Widget clipboardButton(String doc){
    return FlatButton(
      onPressed: (){
        if(doc != 'Clique no botão GERAR'){
          Clipboard.setData(ClipboardData(text: doc));
        }
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Icon(Icons.content_copy,
          size: 35.0,
          color: Colors.white70,
        ),
      ),
    );
  }

  Widget allThreeButton(BuildContext context, String route){
    return FlatButton(
      onPressed: (){
        Navigator.pushNamed(context, route);
      },
      child: Container(
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 70.0,
        width: 220.0,
        child: Center(
          child: Text('GERAR TODOS',
            style: TextStyle(
              color: Colors.deepPurple[900],
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

}