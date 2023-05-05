import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen(
      {super.key, required this.chatRoomId, required this.userName});
  final String chatRoomId;
  final String userName;

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  TextEditingController messageController = TextEditingController();
  Future<Album>? _futureAlbum;

  FutureBuilder<Album> buildFutureBuilder(int index) {
    return FutureBuilder<Album>(
      future: _futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          student[index] = snapshot.data!.answer;

          return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/travel.png"),
                  fit: BoxFit.cover,
                  opacity: 0.4),
            ),
            child: Column(
              children: [Expanded(child: chatMessageList()), MessageBar()],
            ),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );
  }

  Widget buildPastBuilder() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/travel.png"),
            fit: BoxFit.cover,
            opacity: 0.4),
      ),
      child: Column(
        children: [Expanded(child: chatMessageList()), MessageBar()],
      ),
    );
  }

  FirebaseDatabase database = FirebaseDatabase.instance;
  var student = {};
  int index = 0;
  bool sended = false;

  Widget chatMessageList() {
    return Stack(children: [
      Center(
        child: Image.asset(
          'assets/images/loginimg.png',
          opacity: const AlwaysStoppedAnimation(.5),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                reverse: true,
                itemCount: student.length,
                itemBuilder: (BuildContext context, int index) {
                  int lastIndex = (student.length - index);
                  if (index.isEven) {
                    sended = false;
                  } else {
                    sended = true;
                  }
                  return MessageTiles(
                      message: student[index], sendbyme: sended);
                }),
          ),
        ],
      ),
    ]);
  }

  sendMessage() {
    if (messageController.text.isNotEmpty) {
      setState(() {
        student[index+1] = messageController.text;
        _futureAlbum = createAlbum(messageController.text);
        messageController.text = "";
        index + 1;
      });
    }
  }

  Widget MessageBar() {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 12, left: 12, right: 12),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            color: const Color.fromARGB(255, 42, 47, 102),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                controller: messageController,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                )),
                decoration: InputDecoration(
                    hintText: "Message...",
                    hintStyle: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      color: Color.fromARGB(150, 254, 254, 254),
                      fontSize: 18,
                    )),
                    border: InputBorder.none),
              )),
              GestureDetector(
                onTap: () {
                  sendMessage();
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: const Center(
                    child: Icon(
                      Icons.send,
                      color: Color.fromARGB(255, 7, 7, 7),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 244, 246),
      appBar: AppBar(
        title: Text(
          widget.userName,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            color: Color.fromARGB(255, 248, 248, 248),
            fontSize: 22,
            fontWeight: FontWeight.w500,
          )),
        ),
        shadowColor: Colors.purple,
        toolbarHeight: 70,
      ),
      body: (_futureAlbum == null)
          ? buildPastBuilder()
          : buildFutureBuilder(index),
    );
  }
}

Future<Album> createAlbum(String question) async {
  final response = await http.post(
    Uri.parse('https://pyg-backend.up.railway.app/chatbot-api'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      "query": question,
    }),
  );

  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    print(jsonDecode(response.body));
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album');
  }
}

class Album {
  final String answer;

  const Album({required this.answer});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      answer: json['response'],
    );
  }
}

class MessageTiles extends StatelessWidget {
  const MessageTiles(
      {super.key, required this.message, required this.sendbyme});
  final String message;
  final bool sendbyme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          sendbyme ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Container(
              constraints: const BoxConstraints(maxWidth: 200),
              decoration: BoxDecoration(
                gradient: sendbyme
                    ? const LinearGradient(
                        colors: [Color(0xFF19B7FF), Color(0xFF491CCB)])
                    : const LinearGradient(colors: [
                        Color.fromARGB(255, 82, 83, 155),
                        Color(0xFF3A364B)
                      ]),
                borderRadius: sendbyme
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(23),
                        topRight: Radius.circular(23),
                        bottomLeft: Radius.circular(23))
                    : const BorderRadius.only(
                        topLeft: Radius.circular(23),
                        topRight: Radius.circular(23),
                        bottomRight: Radius.circular(23)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text(
                      message,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 18,
                      )),
                    ),
                  ],
                ),
              )),
        )
      ],
    );
  }
}
