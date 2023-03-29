import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottonNavBar extends StatelessWidget {
   BottonNavBar({Key? key,required this.activeScreen}) ;
  int activeScreen ;

  @override
  Widget build(BuildContext context) {
    return  GNav(


    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
    haptic: true,
    selectedIndex: activeScreen,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    backgroundColor: Colors.white,
    gap: 7,
    iconSize: 24,
    duration: Duration(milliseconds: 500),
    textStyle: TextStyle(color: Colors.white),
    curve: Curves.easeInOutCubic,
    style: GnavStyle.google,
    tabs: [
    GButton(
    icon: Icons.home_sharp,
    text: 'Home',
    backgroundColor: Colors.blue,
    iconActiveColor: Colors.white,
    iconColor: Colors.grey,
    margin: EdgeInsets.symmetric(vertical: 20),
    ),
    GButton(
    icon: Icons.language_rounded,
    text: 'World',
    backgroundColor: Colors.blue,
    iconActiveColor: Colors.white,
    iconColor: Colors.grey,
    margin: EdgeInsets.symmetric(vertical: 20),
    ),
    GButton(
    icon: Icons.bookmark_border_outlined,
    text: 'Saved',
    backgroundColor: Colors.blue,
    iconActiveColor: Colors.white,
    iconColor: Colors.grey,
    margin: EdgeInsets.symmetric(vertical: 20),
    ),
    GButton(
    icon: Icons.person_2_outlined,
    text: 'Profile',
    backgroundColor: Colors.blue,
    iconActiveColor: Colors.white,
    iconColor: Colors.grey,
    margin: EdgeInsets.symmetric(vertical: 20),
    ),
    ],
    )
      ;
  }
}
