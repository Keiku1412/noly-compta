import 'package:flutter/material.dart';
import 'package:nolycompta/Login_screens/LogIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'tt_commons'),
      home: Login_page1(),
    );
  }
}
