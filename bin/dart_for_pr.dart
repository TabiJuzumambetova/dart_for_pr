import 'dart:io';
import 'dart:math';

void main(){
squaredNum();
sumNum();
naturalNum();
naturalSum();
naturalSum1();
findSumNum();
squaredNum2();
sber();
}
void squaredNum() {
 
  for (int i = 10; i <= 20; i++) {
    int square = i * i;
    print("Квадрат числа $i равен $square");
  }
}

void sumNum(){
  print("Введите конец диапозона ");
  int end=int.tryParse(stdin.readLineSync()??"")??0;
  int sum=0;
  for(int i=1;i<=end;i++){
    sum+=i;
  }
  print("сумма всех чисел от 1 до $end равна $sum");
}

void naturalNum(){
  for(int i=20; i<=50;i++){
    if(i%3==0 && i%5!=0){
      print("$i is natural ");
    }else{
      print("$i is not natural");
    }
  }
}

void naturalSum(){
  int sum=0;
  for(int i=1;i<=50; i++){
    if(i%5==0 || i%7==0){
      sum+=i;

    }
  }
  print("Сумма чисел которые делятся на 5 или на 7 равна $sum");
}

void naturalSum1(){
  
  for(int i=10;i<100; i++){
    if(i%4==0 && i%6!=0){
      print(i);

    }
  }
  
}
 void findSumNum(){
  for(int i=100;i<=200;i++){
    if(i%17==8){
      print(i);
    }
  }
 }

 void squaredNum2() {
  print("Введите число:");
  int num = int.tryParse(stdin.readLineSync()??"")??0;
 
  for (int i = 1; i <= num; i++) {
    int square = i * i;
    print("Квадрат числа $i равен $square");
  }
}
void sber(){
  stdout.write('Введите начальную сумму вклада (в рублях): ');
  var initialSum = double.parse(stdin.readLineSync()??"");

  stdout.write('Введите количество лет: ');
  var years = int.parse(stdin.readLineSync()??"");

  final annualInterestRate = 3; 
  var finalSum = initialSum * pow(1 + annualInterestRate / 100, years);

  print('Через $years лет сумма вклада составит: $finalSum рублей');
}




