import 'package:book_my_show/dashbord.dart';
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
      home:Dashbord() ,
    );
  }
}