// Copyright 2015 the Dart project authors. All rights reserved.
// Use of this source code is governed by a BSD-style license
// that can be found in the LICENSE file.

import 'employee.dart';

void main() {
  bool active = true;
  const name = "maha";
  final List colors = ['red', 'green', 'blue'];

  int age = 29;
  num pincode = 8110;
  Map person = {'name': 'Alice', 'age': 30};
  Set numbers = {1, 2, 3, 2}; // Duplicate 2 will be ignored
  dynamic district = "Coimbatore";
//  dynamic pincode = 192;
// for declaring null values to the variable.
  int? phone;
  //we can declare also using var .
//  var country = "India";
  var statecode = 10;
// one time declaration which is similar to javascript’s const
  final country = "India";
//Double equals is used to check true or false

  if (active) {
    final country = "a";
    const name = "arun";
    print(country);
    print(name);
    final List colors = ['green', 'orange', 'black'];
    print(colors);
  }
  //print(colors[3]);
  print(country);
  print(name);

//iterate the list in dart:
  colors.forEach((element) {
    print("colorsList : " + element);
  });

  //map
  var emp = [
    {"name": "maha", "age": 29},
    {"name": "arun", "age": 27}
  ];

  String val = "mapname";
  var mapname = emp[1]["name"];
  print(" $val + $mapname");

  //declare function which return nothing
  void printFunc() {
    print("print inside function ");
  }

  printFunc();

  //function with parameter
  void printName(String name) {
    print("parameter function : " + name);
  }

  printName(name);

  //function with parameter and optional parameter
  void printNamewithAge(String name, [int? age]) {
    print(name);
    print(age ?? "we dont provide age");
  }

  printNamewithAge(name);

  //function with return type
  String showMessage(name) {
    if (active)
      return "$name is Active";
    else
      return "$name is not active";
  }

  var message = showMessage(name);
  print(message);

  //class
  //if we want to declare a class , we need to declare outside the main method or other files
  var msg = new employee(name, age);

  //error
  //print(" access name through class : " + msg._name);

  print(msg.getName(name));

  msg.welcomeMsg(name);

  msg.empStatus(active);
}
