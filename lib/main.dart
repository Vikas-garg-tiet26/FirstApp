import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// Just like int main function in cpp

// Creating a widget
class MyApp extends StatelessWidget {
  const MyApp({super.key}); //Constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Welcome to My New App"),
          ), // return const Placeholder();
        ),
      ),
    );
  }
}
