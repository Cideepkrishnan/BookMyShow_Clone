import 'package:flutter/material.dart';

class SeatSelectionScreen extends StatefulWidget {
  const SeatSelectionScreen({super.key});

  @override
  State<SeatSelectionScreen> createState() => _SeatSelectionScreenState();
}

class _SeatSelectionScreenState extends State<SeatSelectionScreen> {
  int selectedTimeIndex = 0;

  final List<String> showTimes = [
    "10:30 AM",
    "02:30 PM",
    "05:15 PM",
    "05:30 PM",
  ];

  final List<String> rows = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Sarvam Maya",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            SizedBox(height: 2),
            Text(
              "VGM Multiplex A/C 2K 7.1 Dolby",
              style: TextStyle(color: Colors.grey, fontSize: 11),
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          /// PRICE + TICKETS
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 8, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Rs.190  VGM RED", style: TextStyle(fontSize: 12)),
                Text(
                  "✏ 10 Tickets",
                  style: TextStyle(
                    color: Color(0xFFE53935),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 8),

          /// TIME LIST
          SizedBox(
            height: 65,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              itemCount: showTimes.length,
              itemBuilder: (context, index) {
                final isSelected = index == selectedTimeIndex;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTimeIndex = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? const Color(0xFF28A745)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(color: const Color(0xFF28A745)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          showTimes[index],
                          style: TextStyle(
                            color: isSelected
                                ? Colors.white
                                : const Color(0xFF28A745),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "2K Dolby 7.1",
                          style: TextStyle(
                            fontSize: 7,
                            color: isSelected ? Colors.white : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 6),

          /// SEATS

          /// SEATS
          /// SEATS (TOP ALIGNED)
Expanded(
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start, // 👈 IMPORTANT
    children: [

      /// FIXED LEFT ROW LABEL STRIP
      SizedBox(
        width: 29,
        height: rows.length * 26.0,
        child: Container(
        decoration: BoxDecoration(  color:Colors.grey.shade400,borderRadius: BorderRadius.circular(20)),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: rows.length,
            itemBuilder: (context, rowIndex) {
              return SizedBox(
                height: 26,
                child: Text(
                  rows[rowIndex],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
        ),
      ),

      /// SEATS (HORIZONTAL SCROLL)
      Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 👈 IMPORTANT
            children: List.generate(rows.length, (rowIndex) {
              return SizedBox(
                height: 28,
                child: Row(
                  children: [

                    /// LEFT BLOCK
                    ...List.generate(8, (seatIndex) {
                      bool sold = rowIndex < 2 && seatIndex < 3;

                      return Container(
                        margin: const EdgeInsets.all(3),
                        width: 14,
                        height: 14,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: sold ? Colors.grey.shade300 : Colors.white,
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(
                            color: sold
                                ? Colors.grey
                                : const Color(0xFF28A745),
                          ),
                        ),
                        child: Text(
                          "${seatIndex + 1}",
                          style: TextStyle(
                            fontSize: 8,
                            color: sold
                                ? Colors.grey
                                : const Color(0xFF28A745),
                          ),
                        ),
                      );
                    }),

                    /// CENTER AISLE
                    const SizedBox(width: 24),

                    /// RIGHT BLOCK
                    ...List.generate(8, (seatIndex) {
                      bool sold = rowIndex < 2 && seatIndex < 2;

                      return Container(
                        margin: const EdgeInsets.all(3),
                        width: 14,
                        height: 14,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: sold ? Colors.grey.shade300 : Colors.white,
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(
                            color: sold
                                ? Colors.grey
                                : const Color(0xFF28A745),
                          ),
                        ),
                        child: Text(
                          "${seatIndex + 9}",
                          style: TextStyle(
                            fontSize: 8,
                            color: sold
                                ? Colors.grey
                                : const Color(0xFF28A745),
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    ],
  ),
),


          /// SCREEN
          Column(
            children: const [
              Icon(Icons.crop_16_9, color: Colors.lightBlue, size: 40),
              SizedBox(height: 4),
              Text(
                "All eyes this way please!",
                style: TextStyle(fontSize: 11, color: Colors.grey),
              ),
              SizedBox(height: 12),
            ],
          ),

          /// LEGEND
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _legendBox(Colors.white, const Color(0xFF28A745), "Available"),
              const SizedBox(width: 14),
              _legendBox(
                const Color(0xFF28A745),
                const Color(0xFF28A745),
                "Selected",
              ),
              const SizedBox(width: 14),
              _legendBox(Colors.grey, Colors.grey, "Sold"),
            ],
          ),

          const SizedBox(height: 12),
        ],
      ),
    );
  }

  static Widget _legendBox(Color fill, Color border, String text) {
    return Row(
      children: [
        Container(
          width: 14,
          height: 14,
          decoration: BoxDecoration(
            color: fill,
            borderRadius: BorderRadius.circular(3),
            border: Border.all(color: border),
          ),
        ),
        const SizedBox(width: 6),
        Text(text, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
