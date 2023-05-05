import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:proton/UI/homepage.dart';
import 'package:proton/UI/optionpage.dart';
import 'package:proton/UI/profilepage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List screens = [const Homepage(), const OptionPage(), const ProfilePage()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/travel.png"),
                fit: BoxFit.cover,
                opacity: 0.4),
          ),
          child: SafeArea(child: screens[index])),
      bottomNavigationBar: CurvedNavigationBar(
        index: index,
        backgroundColor: Colors.transparent,
        color: Color.fromARGB(255, 165, 230, 255),
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          //Handle button tap
          setState(() {
            this.index = index;
          });
        },
      ),
    );
  }
}
