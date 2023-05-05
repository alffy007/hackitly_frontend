// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proton/UI/servicewidget.dart';
import 'package:proton/UI/servicewidget2.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              // Add a clear button to the search bar
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () => {},
              ),
              // Add a search icon or button to the search bar
              prefixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Perform the search here
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
        Center(
          child: Text(
            'Hey Alfred',
            textAlign: TextAlign.left,
            style: GoogleFonts.getFont(
              "Mitr",
              textStyle: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
              ),
            ),
          ),
        ),
        // Center(
        //   child: Text(
        //     'Welcome back!',
        //     style: GoogleFonts.poppins(
        //       textStyle: const TextStyle(
        //           color: Color.fromARGB(255, 121, 121, 121),
        //           letterSpacing: .5,
        //           fontSize: 15,
        //           fontWeight: FontWeight.w400),
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 20),
        //   child: Center(
        //     child: Container(
        //         height: 160,
        //         width: 350,
        //         decoration: BoxDecoration(
        //           color: Color.fromARGB(223, 66, 66, 66),
        //           borderRadius: BorderRadius.circular(25),
        //         ),
        //         child: Container(
        //           child: Image.asset(
        //             'assets/images/logo.png',
        //           ),
        //         )),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 25),
          child: Text(
            'Where do you wanna go?',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Color.fromARGB(255, 81, 81, 81),
                  letterSpacing: .5,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        const ServiceWidget(),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 25),
          child: Text(
            'Top destinations in india',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Color.fromARGB(255, 81, 81, 81),
                  letterSpacing: .5,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: ServiceWidget2(),
        ),
      ],
    );
  }
}
