import 'dart:async';

import 'package:book_my_show/Home/Theter_Location/theter_location.dart';
import 'package:book_my_show/Login/login_screen.dart';
import 'package:book_my_show/Login/verify_screen.dart';
import 'package:book_my_show/dashbord.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(const Duration(seconds: 3), () {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (context) => 
    //     //Dashbord()
    //     LoginScreen()
    //     ),
    //   );
    // });
    _checkLoginStatus();
  }

  _checkLoginStatus()async{
    SharedPreferences _prefs=await SharedPreferences.getInstance();
    bool islogin=await _prefs.getBool("isloggedin")?? false;
      String? city = _prefs.getString("city");
    Timer(Duration(seconds: 3), () {

      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => islogin == true ? const Dashbord(): const LoginScreen(),));
 if (!islogin) {
      // ❌ Not logged in → Login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    } else {
      // ✅ Logged in
      if (city != null && city.isNotEmpty) {
        // ✅ City already selected → Dashbord
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => Dashbord(city: city),
          ),
            (route) => false,
        );
      } else {
        // 🔹 First time after login → CitySelector
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const CitySelector(),
          ),
        );
      }
    }


    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bookmyshow.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}