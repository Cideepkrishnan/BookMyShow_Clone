import 'package:book_my_show/Booking/bookingscreen.dart';
import 'package:book_my_show/Booking/payment_sucess.dart';
import 'package:book_my_show/Home/Best%20Events/planfortody.dart';
import 'package:book_my_show/Home/browseByCinema.dart';
import 'package:book_my_show/Movies/filter.dart';
import 'package:book_my_show/dashbord.dart';
import 'package:book_my_show/movie_detail.dart';
import 'package:flutter/material.dart';

void main(){

runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
    // PaymentSucess()
      Dashbord() ,
    );
  }
}