import 'dart:io';

import 'Operations/Operational.dart';


void main(){

  stdout.writeln("***Calculator***");

  var openCalculator = true;

  do{
    stdout.writeln();
    stdout.writeln("Enter symbol:");
    stdout.writeln();
    stdout.writeln("1. Addition");
    stdout.writeln("2. Subtraction");
    stdout.writeln("3. Multiplication");
    stdout.writeln("4. Division");

    var symbol = stdin.readLineSync();

    int a = 0;
    int b = 0;

    String? number1Str;
    String? number2Str;

    stdout.writeln("Enter Number 1: ");

    number1Str = stdin.readLineSync();

    stdout.writeln("Enter Number 2: ");

    number2Str = stdin.readLineSync();

    a = int.tryParse(number1Str!)!;
    b = int.tryParse(number2Str!)!;

    num? result;

    switch(symbol){
      case "1":
        result = operational.add(a, b);
        break;
      case "2":
        result = operational.minus(a, b);
        break;
      case "3":
        result = operational.multiply(a, b);
        break;
      case "4":
        result = operational.divide(a, b);
        break;
      default:
        result = 0;
    }

    stdout.writeln("Result: $result");

    stdout.writeln();
    stdout.writeln("*****");
    stdout.writeln();

    // ask user if continue to use calculator
    stdout.writeln("Calculate Y/N?:");

    var shouldContinue = stdin.readLineSync();

    if (shouldContinue != null){
       switch(shouldContinue){
        case "Y":
        case "y":
          openCalculator = true;
          break;
        case "N":
        case "n":
        default:
          openCalculator = false;
          break;
       }
    }
    else{
      break;
    }
  }
  while(openCalculator);
}
