import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); //Private named constractor

  static final MyApp instance =
      MyApp._internal(); //Single instance -> singleton

  factory MyApp() => instance; //factory for the class instance

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
