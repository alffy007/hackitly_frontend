import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';
import 'package:proton/UI/youtube.dart';

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
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const YoutubeScreen()),
                                      );
                },
                child: Container(
                  width: 160,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 250, 200, 125),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'YouTube',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color.fromARGB(255, 15, 15, 15),
                                letterSpacing: .5,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: SvgPicture.asset(
                          'assets/images/youtube.svg',
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 160,
                height: 150,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 249, 144, 144),
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'PPT',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 253, 253),
                              letterSpacing: .5,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: SvgPicture.asset(
                        'assets/images/ppt.svg',
                        width: 100,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Container(
                width: 160,
                height: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 147, 147, 147),
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Wikipedia',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              letterSpacing: .5,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 15),
                      child: SvgPicture.asset(
                        'assets/images/wiki.svg',
                        width: 100,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 160,
                height: 120,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 166, 190, 255),
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 8),
                      child: Text(
                        'PDF',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color.fromARGB(255, 15, 15, 15),
                              letterSpacing: .5,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: SvgPicture.asset(
                        'assets/images/pdf.svg',
                        width: 73,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
