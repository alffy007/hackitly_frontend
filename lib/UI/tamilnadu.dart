import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chatbot.dart';

class TamilNadu extends StatelessWidget {
  const TamilNadu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 255, 213, 115),
      body: SafeArea(
        top: true,
        child: Container(
            decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/travel.png"),
                fit: BoxFit.cover,
                opacity: 0.4),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Text(
                  'choose the best locations',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.getFont(
                    "Poppins",
                    textStyle: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 100),
                    child: Text(
                      textAlign: TextAlign.left,
                      'Popular Places',
                      style: GoogleFonts.getFont(
                        "Poppins",
                        textStyle: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                      child: Card(
                        color: const Color.fromARGB(255, 0, 0, 0),
                       
                        child: Padding(
                          padding: const EdgeInsets.only(left: 27, top: 9),
                          child: Text(
                            'View all',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.getFont(
                              "Poppins",
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          width: 325,
                          height: 200,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ConversationScreen(
                                            chatRoomId: 'xxx',
                                            userName: 'YourIndianFriend')),
                              );
                            },
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                              child: Card(
                              
                                child: Center(
                                  child: Container(
                                    width: 325,
                                    height: 200,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/kala.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 140.0),
                                      child: Text(
                                        'Kerala Kalamandalam',
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.getFont(
                                          "Mitr",
                                          textStyle: const TextStyle(
                                            color:
                                                Color.fromARGB(255, 255, 255, 255),
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          width: 325,
                          height: 200,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ConversationScreen(
                                            chatRoomId: 'xxx',
                                            userName: 'YourIndianFriend')),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Card(
                                // color: Color.fromARGB(255, 0, 0, 0),
                            
                                child: Center(
                                  child: Container(
                                    width: 325,
                                    height: 200,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/kuttanad.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 140.0),
                                      child: Text(
                                        'Kuttanad',
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.getFont(
                                          "Mitr",
                                          textStyle: const TextStyle(
                                            color:
                                                Color.fromARGB(255, 255, 255, 255),
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          width: 325,
                          height: 200,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ConversationScreen(
                                            chatRoomId: 'xxx',
                                            userName: 'YourIndianFriend')),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Card(
                                child: Center(
                                  child: Container(
                                    width: 325,
                                    height: 200,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/places-to-visit-in-fort-kochi.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 140.0),
                                      child: Text(
                                        'Fort Kochi',
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.getFont(
                                          "Mitr",
                                          textStyle: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
