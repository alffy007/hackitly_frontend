import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_database/firebase_database.dart';
import '../services/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

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
  FirebaseDatabase database = FirebaseDatabase.instance;
  var student = {};
  int index = 0;
  String _msg = '';
  Widget chatMessageList() {
    return Stack(children: [
      Center(
          child: Image.asset('assets/images/loginimg.png',
              opacity: const AlwaysStoppedAnimation(.5))),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                reverse: true,
                itemCount: student.length,
                itemBuilder: (BuildContext context, int index) {
                  int lastIndex = (student.length - index) - 1;
                  if (student['user$lastIndex'] == null) {
                    _msg = student['user$lastIndex bot'];
                  } else {
                    _msg = student['user$lastIndex'];
                  }
                  return MessageTiles(
                      message: _msg,
                      sendbyme:
                          student.keys.toList().contains('user$lastIndex'));
                }),
          ),
        ],
      ),
    ]);
  }

  sendMessage() {
    if (messageController.text.isNotEmpty) {
      setState(() {
        student['user$index'] = messageController.text;

        messageController.text = "";

        index += 1;
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
            color: Color.fromARGB(255, 42, 47, 102),
          ),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
        backgroundColor: Color.fromARGB(255, 245, 244, 246),
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
        body: FutureBuilder(
            future: Firebase.initializeApp(
              options: DefaultFirebaseOptions.currentPlatform,
            ),
            builder: (context, snapshot) {
              DatabaseReference testref = FirebaseDatabase.instance
                  .ref()
                  .child('kerala')
                  .child('fort kochi');
              testref.child('answer').onValue.listen((event) {
                if (event.snapshot.value.toString() != '') {
                  setState(() {
                    student['user$index bot'] = event.snapshot.value.toString();
                    index++;
                  });
                  print(event.snapshot.value.toString());
                }
              });

              return Column(
                children: [Expanded(child: chatMessageList()), MessageBar()],
              );
            }));
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
              constraints: BoxConstraints(maxWidth: 250),
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
