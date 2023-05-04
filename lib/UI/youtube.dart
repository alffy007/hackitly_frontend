import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:firebase_database/firebase_database.dart';

import '../services/firebase_options.dart';

class YoutubeScreen extends StatefulWidget {
  const YoutubeScreen({Key? key}) : super(key: key);

  @override
  State<YoutubeScreen> createState() => _YoutubeScreenState();
}

class _YoutubeScreenState extends State<YoutubeScreen> {
  bool isLoaded = true;
  String realTimeQue = 'ans';
  late final VideoPlayerController controller;
  TextEditingController url = TextEditingController();
  TextEditingController que = TextEditingController();
  FirebaseDatabase database = FirebaseDatabase.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          DatabaseReference testref = FirebaseDatabase.instance.ref().child('wikipedia');
          testref.child('URL').onValue.listen((event) {
            setState(() {
              realTimeQue = event.snapshot.value.toString();
            });
          });
          return SafeArea(
            child: Column(
              children: [
                TextFormField(
                  controller: url,
                  decoration: const InputDecoration(
                      hintText: 'URL',
                      hoverColor: Colors.amber,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 189, 255, 34)))),
                ),
                TextFormField(
                  controller: que,
                  decoration: const InputDecoration(
                      hintText: 'Question?????',
                      hoverColor: Colors.amber,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 189, 255, 34)))),
                ),
                Center(
                  child: MaterialButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      testref.child('URL').set(url.text);
                      testref
                          .child('Question')
                          .set(que.text);
                    },
                    child: const Text('ASK'),
                  ),
                ),
                Text(realTimeQue)
              ],
            ),
          );
        },
      ),
    );
  }
}
