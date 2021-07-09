import 'package:flutter/material.dart';
import 'package:signupapp/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SignUp',
      theme: ThemeData.dark(),
      home: Signup(),
    );
  }
}
