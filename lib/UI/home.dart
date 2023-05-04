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
      backgroundColor: Colors.black,
      body: SafeArea(child: screens[index]),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black,
        index: index,
        color: Color.fromARGB(255, 124, 224, 115),
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
       
          ),
          Icon(
            Icons.list,
            size: 30,
       
          ),
          Icon(
            Icons.person,
            size: 30,
       
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
