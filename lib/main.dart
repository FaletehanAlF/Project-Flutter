import 'package:belajar_flutter2/pages/homePage.dart';
import 'package:belajar_flutter2/pages/loginPage.dart';
import 'package:belajar_flutter2/pages/registerPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/login": (context) => Loginpage(),
        "/register": (context) => RegisterPage(),
        "/home": (context) => Homepage(),
        "/profile": (context) => Homepage(),
      },
     initialRoute: "/login",
    );
  }
}