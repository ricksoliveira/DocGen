import 'dart:math';

class CNPJGenerator{

  var cnpj = [];
  var result = [];
  final sequencePre = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];
  final sequenceLast = [6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];
  int sum = 0, d1, d2;

  String genCnpj(){

    String cnpj = '';
    this.result.clear();
    this.cnpj.clear();
    this.preLastDigit();
    this.lastDigit();

    this.cnpj.insert(2, '.');
    this.cnpj.insert(6, '.');
    this.cnpj.insert(10, '/');
    this.cnpj.insert(15, '-');

    for(int i=0; i<18; i++){

      if(i == 2 || i == 6){
        cnpj += '.';
      }
      else if(i == 10){
        cnpj += '/';
      }
      else if(i == 15){
        cnpj += '-';
      }
      else{
        if(this.cnpj[i] >= 0 || this.cnpj[i] <= 9){
          cnpj += this.cnpj[i].toString();
        }
      }

    }

    return cnpj;

  }

  void rng(){

    var rng = Random();

    for(int i=0; i<8; i++) {
      this.cnpj.add(rng.nextInt(10));
    }
    this.cnpj.add(0);
    this.cnpj.add(0);
    this.cnpj.add(0);
    this.cnpj.add(1);

  }

  void preLastDigit(){

    this.rng();

    for(int i=0; i<12; i++){
      this.result.add(this.cnpj[i] * this.sequencePre[i]);
    }

    for(int i=0; i<12; i++){
      this.sum += this.result[i];
    }

    if(this.sum % 11 < 2){
      d1 = 0;
    }
    else{
      d1 = (11 - this.sum % 11.0).toInt();
    }

    this.cnpj.add(d1);

  }

  void lastDigit(){

    this.sum = 0;
    this.result.clear();

    for(int i=0; i<13; i++){
      this.result.add(this.cnpj[i] * this.sequenceLast[i]);
    }

    for(int i=0; i<13; i++){
      this.sum += this.result[i];
    }

    if(this.sum % 11 < 2){
      d2 = 0;
    }
    else{
      d2 = (11 - this.sum % 11.0).toInt();
    }

    this.cnpj.add(d2);

  }

}