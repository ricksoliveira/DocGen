import 'package:flutter/material.dart';

class Formats{

  Widget spacingVertical(double h){
    return SizedBox(
      height: h,
    );
  }

  Widget spacingHorizontal(double w){
    return SizedBox(
      width: w,
    );
  }

  Widget spacingDivider(double H, double W){
    return SizedBox(
      height: H,
      width: W,
      child: Divider(
        color: Colors.deepPurple.shade100,
        thickness: 1,
      ),
    );
  }

  TextStyle titleStyle(){
    return TextStyle(
      color: Colors.white70,
      fontSize: 26.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.0,
    );
  }

  TextStyle subtitleStyle() {
    return TextStyle(
      color: Colors.white70,
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.0,
    );
  }

}