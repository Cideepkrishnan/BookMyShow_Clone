import 'package:flutter/material.dart';

class BookingSuccessScreen extends StatefulWidget {
  const BookingSuccessScreen({super.key});

  @override
  State<BookingSuccessScreen> createState() => _BookingSuccessScreenState();
}

class _BookingSuccessScreenState extends State<BookingSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking Confirmed"),
      ),
      body: const Center(
        child: Text(
          "Seats Confirmed Successfully 🎉",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}


