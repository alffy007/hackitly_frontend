import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';
import 'package:proton/UI/delhi.dart';
import 'package:proton/UI/karnataka.dart';
import 'package:proton/UI/kerala.dart';
import 'package:proton/UI/kerala.dart';
import 'package:proton/UI/tamilnadu.dart';

import 'chatbot.dart';

class ServiceWidget extends StatefulWidget {
  const ServiceWidget({super.key});

  @override
  State<ServiceWidget> createState() => _ServiceWidgetState();
}

class _ServiceWidgetState extends State<ServiceWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Kerala()),
                  );
                },
                child: Container(
                  width: 160,
                  height: 150,
                  decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 250, 200, 125),
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/kerala.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 85,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'kerala',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.getFont(
                            "Mitr",
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 40),
                      //   child: SvgPicture.asset(
                      //     'assets/images/youtube.svg',
                      //     width: 100,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Karnataka()),
                  );
                },
                child: Container(
                  width: 160,
                  height: 150,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 250, 200, 125),
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/KARNATAKA.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 85,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'karnataka',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.getFont(
                            "Mitr",
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 40),
                      //   child: SvgPicture.asset(
                      //     'assets/images/youtube.svg',
                      //     width: 100,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              GestureDetector(
                onTap:() {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Delhi()),
                  );
                },
                child: Container(
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 250, 200, 125),
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/delhi.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 105,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Delhi',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.getFont(
                            "Mitr",
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 40),
                      //   child: SvgPicture.asset(
                      //     'assets/images/youtube.svg',
                      //     width: 100,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TamilNadu()),
                  );
                },
                child: Container(
                  width: 170,
                  height: 130,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 166, 190, 255),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/tamilnadu.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 75,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Tamil Nadu',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.getFont(
                            "Mitr",
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
