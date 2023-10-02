import 'dart:io';

void main() {
  print("welcome to Dart1!");

  stdout.write("dart");
  var name = stdin.readLineSync();

  print("Welcome1 $name");

  var ahmed = new Human(); // creating class object
}

// creating class
class Human {
  Human(); //default class constructor
}
