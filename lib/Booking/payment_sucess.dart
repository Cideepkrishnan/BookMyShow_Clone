import 'package:book_my_show/Booking/ticket.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class PaymentSuccess extends StatefulWidget {
  final String movieTitle;
  final String movieImage;
  final String movieDuration;
  final String movieType;
  final String movieRating;
  final String showTime;
  final String theatreName;
  final String showDate;
  final int ticketCount;
  final List<String> seats;
  final double totalAmount;

  const PaymentSuccess({
    super.key,
    required this.movieTitle,
    required this.movieImage,
    required this.movieDuration,
    required this.movieType,
    required this.movieRating,
    required this.showTime,
    required this.theatreName,
    required this.showDate,
    required this.ticketCount,
    required this.seats,
    required this.totalAmount,
  });

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => TicketScreen(
            movieTitle: widget.movieTitle,
            movieImage: widget.movieImage,
            movieDuration: widget.movieDuration,
            movieType: widget.movieType,
            movieRating: widget.movieRating,
            showTime: widget.showTime,
            theatreName: widget.theatreName,
            showDate: widget.showDate,
            ticketCount: widget.ticketCount,
            seats: widget.seats,
            totalAmount: widget.totalAmount,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xAD4CAF4F),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Lottie.asset(
              "assets/json/Success.json",
              height: 250,
              width: double.maxFinite,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
