// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proton/UI/servicewidget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Hi, Alfred!',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                letterSpacing: .5,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ),
        Center(
          child: Text(
            'Welcome back!',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Color.fromARGB(255, 121, 121, 121),
                  letterSpacing: .5,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Center(
            child: Container(
                height: 160,
                width: 350,
                decoration: BoxDecoration(
                  color: Color.fromARGB(223, 66, 66, 66),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Container(
                  child: Image.asset(
                    'assets/images/logo.png',
                  ),
                )),
          ),
        ),
        Text(
          'How can i help you?',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Color.fromARGB(255, 255, 252, 252),
                letterSpacing: .5,
                fontSize: 15,
                fontWeight: FontWeight.w400),
          ),
        ),
        ServiceWidget()
      ],
    );
  }
}
