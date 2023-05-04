import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proton/UI/chatbot.dart';


class Kerala extends StatelessWidget {
  const Kerala({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 213, 115),
      body: SafeArea(
        top: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Kerala- The God\'s own Country',
                style: GoogleFonts.getFont(
                  "Mitr",
                  textStyle: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 24,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  // Navigate to another page when the card is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ConversationScreen(
                          chatRoomId: 'xxx', userName: 'YourIndianFriend'),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 280),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    margin: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/kerala.jpg',
                            width: double.infinity,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Title',
                                style: TextStyle(fontSize: 24),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Description',
                                style: GoogleFonts.getFont(
                                  "Mitr",
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
