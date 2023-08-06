import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/routes.dart';

void main() {
  runApp(MyApp());
}
// Just like int main function in cpp

// Creating a widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: Homepage(),

        //  Themes in App
        themeMode: ThemeMode.light, // makes ui of app dark;
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        routes: {
          "/": (context) => Login_page(),
          MyRoutes.homeRoute: (context) => Homepage(),
          MyRoutes.loginRoute: (context) => Login_page(),
        });
  }
}
