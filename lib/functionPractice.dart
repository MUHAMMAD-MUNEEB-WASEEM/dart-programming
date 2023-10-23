import 'dart:io';

void main() {
  print("main function");

  var myc = myClass(); //obj create of class

  myc.printName('muneeb');

  myc.printName('munee1');

  var data = myc.addition(10, 8);
  print(data);
}

class myClass {
  //constructor
  myClass() {
    //default constructor, initialized when class object called
    print("Contructor called");
  }

  // not return function
  void printName(String name) {
    print("function printing $name");
  }

  //return function
  int addition(int a, int b) {
    // int a, b;

    // a = 5;
    // b = 6;
    int sum = a + b;
    return sum;
  }
}
