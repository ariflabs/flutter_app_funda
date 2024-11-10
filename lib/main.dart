import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

  // print(9 % 3);
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  //FUNDAMENTAL PROGRAMING DART

  //VARIABLES: example to add or store different types of info
  String name = 'Arif Hidayat';
  int age = 25;
  bool isBeginner = true;

  /*

  BASIC MATH OPERATORS:
  1 + 1 => 2, add
  5 - 2 => 3, subtract
  2 * 3 => 6, multiply
  6 / 2 => 3, divide
  6 ~/ 2 => 3, floor divide
  5 % 2 => 1, remainder

  COMPARISON OPERATORS:
  7 == 7 => true, EQUAL TO
  7 != 5 => true, NOT EQUAL TO
  7 > 6  => true, GREATER THAN
  7 < 6  => false, LESS THAN
  7 >= 7 => true, GREATER OR EQUAL TO
  5 <= 7 => true, LESS OR EQUAL TO

  LOGICAL OPERATORS:

  AND operator, return true if both side are true
  isBeginner && ( age < 19 ) => return true

  OR operator. return true if at least one side is true
  isBeginner || ( age < 19 ) => return true

  Not operator, return the opposite value
  !isBeginner => return false


  C O N T R O L F L O W S:
  //if
  if (condition) {
    do something
  }

  //if else
  if() {

  } else {
  }

  //if n else if
  if() {

  }else if (condition) {

  } else {
  }


  Switch Statment:
  switch (variable) {
    case value:
      do something
      break;
    case value:
      do something
      break;
    case value:
      do something
      break;
    default:
      do something
  }


  LOOP

  for (int i = 0; i < 10; i++) {
    print(i);
  }

  F U N C T I O N S

  'void' means that the function does not return anything
  */

  //basic function
  void greet() {
    print('Asslamualaikum, Rif');
  }

  // function with parameters
  void sayHello(String name, int age) {
    print('Hello ' + name);
  }

  // function with return type
  int add(int a, int b) {
    int sum = a + b;
    return sum;
  }

  /*
  =========================================
  DATA STRUCTURES
  */

  // List : ordered collection of items, can have duplicate items
  List numbers = [1, 2, 3, 4, 5];
  List<int> numbers2 = [1, 2, 3, 4, 5]; // list of integer

  List<String> names = ['Arif', 'Hidayat']; // list of string
  // numbers[0] = index, get value -> 1
  // numbers[1] = index, get value -> 2

  // Set : unordered collection of unique items
  Set<String> uniqNames = {'Arif', 'Acep', 'Adi'};

  //Map : collection of key-value pairs
  Map users = {'name': 'Arif', 'age': 25};

  void printList() {
    for (int i = 0; i < numbers.length; i++) {
      print(numbers[i]);
    }
  }

  @override
  Widget build(BuildContext context) {
    // printList();

    print(users['name']);

    // int mysum = add(2, 3);

    // print(mysum);

    // String rating = 'B';
    // print(!isBeginner || age <= 33); logical operators

    // if (age > 30) {
    //   print('You are old!');
    // } else if (age == 27) {
    //   print('You are young!');
    // } else {
    //   print('You are so young!');
    // }

    // switch (rating) {
    //   case 'A':
    //     print('Very good!');
    //     break;
    //   case 'B':
    //     print('Good!');
    //     break;
    //   case 'C':
    //     print('Not bad!');
    //     break;
    //   case 'D':
    //     print('Bad!');
    //     break;
    //   case 'E':
    //     print('Very bad!');
    //     break;
    //   default:
    //     print('Very so bad!');
    // }

    // for (int i = 0; i <= 5; i++) {
    //   print(i);
    // }

    // for (int i = 0; i <= 7; i++) {
    //   if (i == 5) {
    //     continue; // or break
    //   }
    //   print(i);
    // }

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
