import 'package:flutter/material.dart';

class ConfirmBookingScreen extends StatelessWidget {
  const ConfirmBookingScreen({super.key});

  @override
  build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new,size: 20,)),
        title: const Text(
          "Confirm booking",
          style: TextStyle(color: Colors.black,fontSize: 18),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            /// MOVIE DETAILS
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
                    children: const [
                      Expanded(
                        child: Text(
                          "Sarvam Maya",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "3",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Fri, 16 Jan, 2026 | 10:30 AM",
                    style: TextStyle(color: Colors.black,fontSize: 12),
                  ),
                  //const SizedBox(height: 6),
                  const Text(
                    "Malayalam (2D)\nVGM RED - D11, D12, D13\nVGM Multiplex A/C 2K 7.1 Dolby (VGM RED)",
                    style: TextStyle(color: Colors.black54,fontSize: 11),
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
                        style: TextStyle(color: Colors.black,fontSize: 11),
                        children: [
                          TextSpan(
                            text: "Cancellation Available\n",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),
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

            /// PRICE DETAILS
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Expanded(child: Text("Ticket(s) price", style: TextStyle(color: Colors.black,fontSize: 12))),
                      Text("₹570.00", style: TextStyle(color: Colors.black,fontSize: 12)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Expanded(child: Text("Convenience fees", style: TextStyle(color: Colors.black,fontSize: 12))),
                      Text("₹77.88", style: TextStyle(color: Colors.black,fontSize: 12)),
                    ],
                  ),
                 SizedBox(height: 10),
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          "Give to Underprivileged Musicians\n(₹1 per ticket)"
                         , style: TextStyle(color: Colors.black,fontSize: 12)
                        ),
                      ),
                      Text(
                        "Add ₹3.00", style: TextStyle(color: Colors.red,fontSize: 12)
                       
                      ),
                    ],
                  ),
                  const Divider(height: 24),
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          "Order total", style: TextStyle(color: Colors.black,fontSize: 12)
                         
                        ),
                      ),
                      Text(
                        "₹647.88"
                       , style: TextStyle(color: Colors.black,fontSize: 12)
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            /// CONTACT DETAILS
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
                          "For Sending Booking Details", style: TextStyle(color: Colors.black,fontSize: 12)
                         
                        ),
                      ),
                      Text(
                        "Edit", style: TextStyle(color: Colors.red,fontSize: 12)
                       
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "+91-9072462527 | cideep671@gmail.com", style: TextStyle(color: Colors.black54,fontSize: 12)
                   
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "Kerala (for GST purposes)", style: TextStyle(color: Colors.black,fontSize: 12)
                    
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            /// APPLY OFFERS
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

      /// BOTTOM BAR
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.white,
         
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("Total", style: TextStyle(color: Colors.black87,fontSize: 11)),
                SizedBox(height: 4),
                Text(
                  "₹647.88",
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE53935),
               
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "Continue",
                style: TextStyle(fontSize: 16,color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
