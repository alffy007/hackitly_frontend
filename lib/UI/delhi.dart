
import 'package:flutter/material.dart';

class Delhi extends StatefulWidget {
  const Delhi({super.key});

  @override
  State<Delhi> createState() => _DelhiState();
}

class _DelhiState extends State<Delhi> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('delhi')),
    );
  }
}