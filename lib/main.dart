import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'UI/First.dart';
import 'UI/home.dart';
import 'UI/login.dart';
import 'UI/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inhalake',

      home: First()
    );
  }
}
