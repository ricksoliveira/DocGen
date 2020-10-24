import 'dart:math';

class CPFGenerator{

  var cpf = [];
  var result = [];
  var sequencePre = [10, 9, 8, 7, 6, 5, 4, 3, 2];
  var sequenceLast = [11, 10, 9, 8, 7, 6, 5, 4, 3, 2];
  int sum = 0, d1, d2;

  String genCPF(){

    String cpf = '';
    this.cpf.clear();
    this.preLastDigit();
    this.lastDigit();

    this.cpf.insert(3, '.');
    this.cpf.insert(7, '.');
    this.cpf.insert(11, '-');


    for(int i=0; i<14; i++){

      if(i == 3 || i == 7){
        cpf += '.';
      }
      else if(i == 11){
        cpf += '-';
      }
      else{
        if(this.cpf[i] >= 0 || this.cpf[i] <= 9){
          cpf += this.cpf[i].toString();
        }
      }

    }

    return cpf;

  }


  void rng(){

    var rng = Random();
    this.cpf.clear();

    for(int i=0; i<9; i++) {
      this.cpf.add(rng.nextInt(10));
    }

  }


  void preLastDigit(){

    this.rng();

    for(int i=0; i<9; i++){
      this.result.add(this.cpf[i] * this.sequencePre[i]);
    }

    for(int i=0; i<9; i++){
      this.sum += this.result[i];
    }

    if(11 - (this.sum % 11.0) > 9){
      d1 = 0;
    }
    else{
      d1 = (11 - this.sum % 11.0).toInt();
    }

    this.cpf.add(d1);

  }

  void lastDigit(){

    this.sum = 0;
    this.result.clear();

    for(int i=0; i<10; i++){
      this.result.add(this.cpf[i] * this.sequenceLast[i]);
    }

    for(int i=0; i<10; i++){
      this.sum += this.result[i];
    }

    if(11 - (this.sum % 11.0) > 9){
      d2 = 0;
    }
    else{
      d2 = (11 - this.sum % 11.0).toInt();
    }

    this.cpf.add(d2);

  }


}