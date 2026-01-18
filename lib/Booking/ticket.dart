import 'package:flutter/material.dart';
class TicketScreen extends StatefulWidget {
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

  const TicketScreen({
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
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  String generateBookingId() {
    final random = DateTime.now().millisecondsSinceEpoch.toString().substring(
      7,
    );
    return 'BMS$random';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E0E0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top bar
              Container(
                height: 60,
                color: Colors.grey.shade300,
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.share, size: 18),
                    const SizedBox(width: 8),
                    const Text(
                      "SHARE YOUR TICKET",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(width: 50),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).popUntil((route) => route.isFirst);
                      },
                      child: Container(
                        height: 54,
                        width: 54,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.red,width: 2),
                        ),
                        child: const Icon(
                          Icons.close,
                          color: Colors.red,
                          size: 19,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Ticket card
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  //margin: const EdgeInsets.symmetric(horizontal: 16),
                  //padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Movie info
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 90,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: NetworkImage(widget.movieImage),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${widget.movieTitle} (${widget.movieRating})",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "${widget.movieType}, 2D",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "${widget.showDate} | ${widget.showTime}",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    widget.theatreName,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                "M-Ticket",
                                style: TextStyle(fontSize: 11, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                    
                        const SizedBox(height: 14),
                    
                        // Tap info
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "Tap for support, details & more actions",
                            style: TextStyle(fontSize: 11),
                          ),
                        ),
                    
                        const SizedBox(height: 16),
                    
                        // QR + Details
                        Row(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://api.qrserver.com/v1/create-qr-code/?size=200x200&data=BMS",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${widget.ticketCount} Ticket(s)",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "SCREEN 3",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "VGM RED - ${widget.seats.join(', ')}",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  "BOOKING ID: ${generateBookingId()}",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                    
                        const SizedBox(height: 14),
                    
                        // Cancellation
                        Container(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          width: double.maxFinite,
                          decoration: BoxDecoration(color: Colors.grey.shade100),
                          alignment: Alignment.center,
                          child: const Text(
                            "Cancellation available : cut-off time of 4 hrs before showtime",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 9, color: Colors.grey),
                          ),
                        ),
                    
                        const Divider(height: 24),
                    
                        // Total
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total Amount", style: TextStyle(fontSize: 12)),
                            Text(
                              "₹ ${widget.totalAmount.toStringAsFixed(2)}",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 14),

              // Find venue
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                height: 44,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.location_on_outlined),
                    SizedBox(width: 6),
                    Text(
                      "Find Venue",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Google wallet
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(24),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.account_balance_wallet, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      "Add to Google Wallet",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
