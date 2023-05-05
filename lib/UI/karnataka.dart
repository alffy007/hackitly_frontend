import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Karnataka extends StatefulWidget {
  const Karnataka({super.key});

  @override
  State<Karnataka> createState() => _KarnatakaState();
}

class _KarnatakaState extends State<Karnataka> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('karnataka')),
    );;
  }
}