import 'package:book_my_show/Booking/payment.dart';
import 'package:flutter/material.dart';

class ConfirmBookingScreen extends StatelessWidget {
  final String movieTitle;
  final String showTime;
  final String theatreName;
  final int ticketCount;
  final List<String> seats;

  const ConfirmBookingScreen({
    super.key,
    required this.movieTitle,
    required this.showTime,
    required this.theatreName,
    required this.ticketCount,
    required this.seats,
  });

  @override
  build(BuildContext context) {
    final int ticketPrice = 150 * ticketCount;
    final double convenienceFee = 15.40 * ticketCount;
    final double donation = 3.00;
    final double totalAmount = ticketPrice + convenienceFee + donation;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, size: 20),
        ),
        title: const Text(
          "Confirm booking",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          movieTitle,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        "$ticketCount",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Mon, 19 Jan, 2026 | $showTime",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  Text(
                    "Malayalam (2D)\nVGM RED - ${seats.join(', ')}\n$theatreName",
                    style: TextStyle(color: Colors.black54, fontSize: 11),
                  ),
                  const SizedBox(height: 8),

                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE9F9ED),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 11),
                        children: [
                          TextSpan(
                            text: "Cancellation Available\n",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            ),
                          ),
                          TextSpan(
                            text:
                                "This venue supports booking cancellation. To know more ",
                          ),
                          TextSpan(
                            text: "view cancellation policy",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Ticket(s) price",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                      Text(
                        "₹${ticketPrice.toStringAsFixed(2)}",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Convenience fees",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                      Text(
                        "₹${convenienceFee.toStringAsFixed(2)}",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Give to Underprivileged Musicians\n(₹1 per ticket)",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                      Text(
                        "Add ₹${donation.toStringAsFixed(2)}",
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    ],
                  ),
                  const Divider(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Order total",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                      Text(
                        "₹${totalAmount.toStringAsFixed(2)}",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          "For Sending Booking Details",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                      Text(
                        "Edit",
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "+91-9072462527 | cideep671@gmail.com",
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "Kerala (for GST purposes)",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: const [
                  Icon(Icons.local_offer, color: Colors.orange),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Apply Offers",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(Icons.chevron_right),
                ],
              ),
            ),

            const SizedBox(height: 80),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Total",
                  style: TextStyle(color: Colors.black87, fontSize: 11),
                ),
                SizedBox(height: 4),
                Text(
                  "₹${totalAmount.toStringAsFixed(2)}",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
             // onPressed: () {},
             onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PaymentScreen(
          totalAmount: totalAmount,
        ),
      ),
    );
  },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE53935),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "Continue",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}