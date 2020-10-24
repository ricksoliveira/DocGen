import 'dart:math';

class RGGenerator{

  var rg = [];
  var result = [];
  final sequence = [2, 3, 4, 5, 6, 7, 8, 9];
  int sum = 0;
  var d;

  String genRg(){

    String rg = '';
    this.result.clear();
    this.rg.clear();
    this.verificationDigit();

    this.rg.insert(2, '.');
    this.rg.insert(6, '.');
    this.rg.insert(10, '-');

    for(int i=0; i<12; i++){

      if(i == 2 || i == 6){
        rg += '.';
      }

      else if(i == 10){
        rg += '-';
      }

      else if(i == 11 && this.d == -1){
        rg += 'X';
      }

      else{
        if(this.rg[i] >= 0 || this.rg[i] <= 9){
          rg += this.rg[i].toString();
        }
      }

    }

    return rg;

  }

  void rng(){

    var rng = Random();

    for(int i=0; i<8; i++) {
      this.rg.add(rng.nextInt(10));
    }

  }

  void verificationDigit(){

    this.rng();

    for(int i=0; i<8; i++){
      this.result.add(this.rg[i] * this.sequence[i]);
    }

    for(int i=0; i<8; i++){
      this.sum += this.result[i];
    }

    if( (this.sum + (0*100)) % 11 == 0 ) this.d = 0;
    else if( (this.sum + (1*100)) % 11 == 0 ) this.d = 1;
    else if( (this.sum + (2*100)) % 11 == 0 ) this.d = 2;
    else if( (this.sum + (3*100)) % 11 == 0 ) this.d = 3;
    else if( (this.sum + (4*100)) % 11 == 0 ) this.d = 4;
    else if( (this.sum + (5*100)) % 11 == 0 ) this.d = 5;
    else if( (this.sum + (6*100)) % 11 == 0 ) this.d = 6;
    else if( (this.sum + (7*100)) % 11 == 0 ) this.d = 7;
    else if( (this.sum + (8*100)) % 11 == 0 ) this.d = 8;
    else if( (this.sum + (9*100)) % 11 == 0 ) this.d = 9;
    else if( (this.sum + (10*100)) % 11 == 0 ) this.d = -1;

    this.rg.add(d);

  }

}