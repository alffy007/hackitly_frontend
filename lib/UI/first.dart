import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'login.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  late final VideoPlayerController controller;
  bool isLoaded = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(child: CircularProgressIndicator()),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/firstback1.jpg',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 550),
                child: Text(
                  "Welcome to",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    "Poppins",
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w700,
                      fontSize: 45,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35, bottom: 50),
                child: Text(
                  "Incredible\nIndia",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.getFont(
                    "Poppins",
                    textStyle: const TextStyle(
                      color: Color(0xFFA5E6FF),
                      fontWeight: FontWeight.w700,
                      fontSize: 45,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 110, right: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginView()),
                    );
                  },
                  child: const Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.black,
                    size: 70.0,
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
