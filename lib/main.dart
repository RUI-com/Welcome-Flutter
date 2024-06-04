// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Welcome(),
      //   "/login": (context) => Login(),
      //   "/signup": (context) => Signup(),
      // },
    );
  }
}
