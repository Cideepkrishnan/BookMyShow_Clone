import 'package:book_my_show/home.dart';
import 'package:book_my_show/live_event.dart';
import 'package:book_my_show/movies.dart';
import 'package:book_my_show/profileScreen/profile.dart';
import 'package:flutter/material.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({super.key});

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  List<Widget> pages=[Homescreen(),Movies(),LiveEvent(),Profile()];
  int current=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[current] ,
      bottomNavigationBar: BottomNavigationBar( 
        type:BottomNavigationBarType.fixed ,
        //landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
         elevation: 1,
        iconSize: 19,
        showUnselectedLabels: true,
        // showSelectedLabels: false,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        //backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.normal,
          letterSpacing: 0,
        ),
        onTap: (index) {
          setState(() {
            current = index;
          });
        },
        currentIndex: current,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.movie),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.video_call),label: "Movies"),
          BottomNavigationBarItem(icon: Icon(Icons.local_activity),label: "Live Events"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
        ] ),
    );
  }
}