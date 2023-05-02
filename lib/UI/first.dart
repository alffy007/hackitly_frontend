import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  late final VideoPlayerController controller;
  bool isLoaded = true;
  @override
  void initState() {
    controller = VideoPlayerController.asset('assets/girlwalk.mp4')
      ..initialize().then((_) {
        controller.play();
        controller.setLooping(true);
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 17, 29, 59),
        body: Visibility(
          visible: isLoaded,
          replacement: const Center(child: CircularProgressIndicator()),
          child: Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Container(
                height: 400,
                width: double.infinity,
                child: VideoPlayer(controller),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(200)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                      "Breathe in.\nDrink up.\nMonitor your air and water quality with ease!!!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont("Kanit",
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 253, 250, 250),
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ))),
                ),
              ),
            ),
            Container(
              height: 70,
              width: 350,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 31, 43, 71),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: TextButton(
                        //set background color of button to white

                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFFFFFFF)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100),
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100),
                                ),
                              ),
                            )),
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              "/login/", (route) => false);
                        },
                        child: const Text(
                          'login',
                          style: TextStyle(
                              color: Color.fromARGB(255, 15, 15, 16),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              "/register/", (route) => false);
                        },
                        child: const Text(
                          'register',
                          style: TextStyle(
                              color: Color.fromARGB(255, 236, 239, 240),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ]),
        ));
  }
}
