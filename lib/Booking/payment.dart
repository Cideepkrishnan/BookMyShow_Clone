import 'package:book_my_show/Booking/payment_sucess.dart';
import 'package:book_my_show/Booking/paymentsScrens/debit_atm.dart';
import 'package:book_my_show/Booking/paymentsScrens/gift_voucher.dart';
import 'package:book_my_show/Booking/paymentsScrens/mobile_wallet.dart';
import 'package:book_my_show/Booking/paymentsScrens/net_bank.dart';
import 'package:book_my_show/Booking/paymentsScrens/pay_later.dart';
import 'package:book_my_show/Booking/paymentsScrens/paybyupi.dart';
import 'package:book_my_show/Booking/paymentsScrens/redeem_point.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  final double totalAmount;
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

  const PaymentScreen({
    super.key,
    required this.totalAmount,
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
  });

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  List<Map<String, dynamic>> otherPaymentOptions = [
    {
      "icon": Icons.account_balance,
      "iconColor": Colors.orange,
      "title": "Pay by any UPI App",
      "screen": Paybyupi(),
    },
    {
      "icon": Icons.credit_card,
      "iconColor": Colors.blue,
      "title": "Debit/Credit Card",
      "screen": DebitAtm(),
    },
    {
      "icon": Icons.account_balance_wallet_outlined,
      "iconColor": Colors.green,
      "title": "Mobile Wallets",
      "screen": MobileWallet(),
    },
    {
      "icon": Icons.card_giftcard,
      "iconColor": Colors.pink,
      "title": "Gift Voucher",
      "screen": GiftVoucher(),
    },
    {
      "icon": Icons.computer,
      "iconColor": Colors.grey,
      "title": "Net Banking",
      "screen": NetBank(),
    },
    {
      "icon": Icons.access_time,
      "iconColor": Colors.grey,
      "title": "Pay Later",
      "screen": PayLater(),
    },
    {
      "icon": Icons.stars,
      "iconColor": Colors.orange,
      "title": "Redeem Points",
      "screen": RedeemPoint(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 20,
          ),
        ),
        title: const Text(
          "Payment",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF9E6),
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300, width: 1),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Amount Payable",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    "₹${widget.totalAmount.toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "PREFERRED PAYMENTS",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade600,
                  letterSpacing: 0.5,
                ),
              ),
            ),

            const SizedBox(height: 12),

            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(bottom: 1),
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 12,
                  bottom: 12,
                ),
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Image.network(
                        "https://logodix.com/logo/679450.jpg",
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Amazon Pay Balance",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            "Pay using Amazon Pay Balance and get upto INR 75* back. *T&C Apply",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey.shade600,
                              height: 1.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "LINK ACCOUNT",
                      style: TextStyle(
                        color: Color(0xFFE53935),
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            InkWell(
              onTap: () {
                show(
                  context,
                  widget.totalAmount,
                  widget.movieTitle,
                  widget.movieImage,
                  widget.movieDuration,
                  widget.movieType,
                  widget.movieRating,
                  widget.showTime,
                  widget.theatreName,
                  widget.showDate,
                  widget.ticketCount,
                  widget.seats,
                );
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 1),
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 12,
                  bottom: 12,
                ),
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Image.asset("assets/images/gpay.jpg"),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Google Pay",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            "UPI account will be used for payment",
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey.shade600,
                              height: 1.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.chevron_right, color: Colors.black54),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "OTHER PAYMENT OPTIONS",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade600,
                  letterSpacing: 0.5,
                ),
              ),
            ),

            const SizedBox(height: 10),

            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: otherPaymentOptions.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            otherPaymentOptions[index]["screen"],
                      ),
                    );
                  },
                  tileColor: Colors.white,
                  leading: Icon(
                    otherPaymentOptions[index]["icon"],
                    color: otherPaymentOptions[index]["iconColor"],
                    size: 20,
                  ),
                  title: Text(
                    otherPaymentOptions[index]["title"],
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Container(height: 1, color: const Color(0xFFECEAEA));
              },
            ),

            const SizedBox(height: 10),

            Center(
              child: Image.asset(
                "assets/images/securepayment.png",
                fit: BoxFit.cover,
                height: 80,
                width: double.maxFinite,
              ),
            ),

            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 0,
                right: 16,
                bottom: 0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Note",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1.",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          "Registrations/Tickets once booked can't be exchanged, cancelled or refunded.",
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey.shade600,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "2.",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          "If booked via Credit/Debit Card, the card holder must be present at the ticket counter while collecting the ticket(s).",
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey.shade600,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "As safe as it gets",
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 12),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Visa_Inc._logo.svg/2560px-Visa_Inc._logo.svg.png",
                    height: 10,
                  ),
                  const SizedBox(width: 10),
                  Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Mastercard-logo.svg/1280px-Mastercard-logo.svg.png",
                    height: 14,
                  ),
                  const SizedBox(width: 10),
                  Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/RuPay.svg/2560px-RuPay.svg.png",
                    height: 10,
                  ),
                  const SizedBox(width: 10),
                  Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/UPI-Logo-vector.svg/2560px-UPI-Logo-vector.svg.png",
                    height: 10,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

// Google Pay Bottom Sheet Function
void show(
  BuildContext context,
  double amount,
  String movieTitle,
  String movieImage,
  String movieDuration,
  String movieType,
  String movieRating,
  String showTime,
  String theatreName,
  String showDate,
  int ticketCount,
  List<String> seats,
) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (_) {
      return Container(
        padding: const EdgeInsets.fromLTRB(16, 14, 16, 24),
        decoration: const BoxDecoration(
          color: Color(0xFF1E1F22),
          borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// HEADER
            Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  child: Image.asset(
                    "assets/images/gog.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Google Pay',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close, color: Colors.white),
                ),
              ],
            ),

            const SizedBox(height: 16),

            /// MERCHANT
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: const Color(0xFF2A2B2E),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    height: 36,
                    width: 36,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Image.network(
                      "https://asset.brandfetch.io/id4J58sqa_/idYuv668fY.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      'BIGTREE ENTERT...',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    '₹${amount.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            /// TITLE
            const Text(
              'Choose account to pay with',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),

            const SizedBox(height: 12),

            /// BANK ROW
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: const Color(0xFF2A2B2E),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)),
                    child: Image.network(
                      "https://i.pinimg.com/736x/a5/1c/5e/a51c5e2deec1f6af447e0f7416bdd53e.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Canara Bank ••••1234',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Text(
                            'Balance:',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                          Text(
                            ' Check now',
                            style: TextStyle(
                              color: Color(0xFF8AB4F8),
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.keyboard_arrow_down, color: Colors.white),
                ],
              ),
            ),

            const SizedBox(height: 22),

            /// PAY BUTTON
            SizedBox(
              height: 40,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentSuccess(
                        movieTitle: movieTitle,
                        movieImage: movieImage,
                        movieDuration: movieDuration,
                        movieType: movieType,
                        movieRating: movieRating,
                        showTime: showTime,
                        theatreName: theatreName,
                        showDate: showDate,
                        ticketCount: ticketCount,
                        seats: seats,
                        totalAmount: amount,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF96BFF5),
                ),
                child: Text(
                  'Pay ₹${amount.toStringAsFixed(2)}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 18),

            /// FOOTER
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'ICICI Bank',
                  style: TextStyle(color: Colors.white54, fontSize: 12),
                ),
                SizedBox(width: 12),
                Text('|', style: TextStyle(color: Colors.white30)),
                SizedBox(width: 12),
                Text(
                  'Powered by UPI',
                  style: TextStyle(color: Colors.white54, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}