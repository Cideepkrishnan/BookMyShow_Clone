import 'package:book_my_show/Booking/seatselection.dart';
import 'package:flutter/material.dart';

class BookMyShowScreen extends StatefulWidget {
  final String movieTitle;
  final String movieDuration;
  final String movieImage;
  final String movieType;
  final String movieRating;
  
  const BookMyShowScreen({
    super.key,
    required this.movieTitle,
    required this.movieDuration,
    required this.movieImage,
    required this.movieType,
    required this.movieRating,
  });

  @override
  State<BookMyShowScreen> createState() => _BookMyShowScreenState();
}

class _BookMyShowScreenState extends State<BookMyShowScreen> {
  int selectedDateIndex = 0;
  List<String> book = ["Sort by", "₹0 - ₹200", "Clear filters"];
  
  List<Map<String, dynamic>> theaters = [
    {
      "name": "VGM Multiplex A/C 2K 7.1 Dolby",
      "times": ["10:30 AM", "02:30 PM", "05:15 PM", "05:30 PM", "10:30 PM"],
    },
    {
      "name": "Vinayaka Theater Complex 2K A/C Dolby 7.1",
      "times": ["05:30 PM", "08:30 PM"],
    },
  ];

  List<Map<String, String>> dates = [
    {"day": "SAT", "date": "18", "month": "JAN"},
    {"day": "SUN", "date": "19", "month": "JAN"},
    {"day": "MON", "date": "20", "month": "JAN"},
    {"day": "TUE", "date": "21", "month": "JAN"},
    {"day": "WED", "date": "22", "month": "JAN"},
    {"day": "THU", "date": "23", "month": "JAN"},
    {"day": "FRI", "date": "24", "month": "JAN"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios, size: 20),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.movieTitle,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            SizedBox(height: 2),
            Text(
              "Movie runtime: ${widget.movieDuration}",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 12),
          Icon(Icons.tune, color: Colors.black),
          SizedBox(width: 12),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Date Selection
            Container(
              height: 80,
              color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dates.length,
                itemBuilder: (context, index) {
                  bool isSelected = index == selectedDateIndex;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedDateIndex = index;
                      });
                    },
                    child: Container(
                      width: 60,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: isSelected ? const Color(0xFFE53935) : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            dates[index]["day"]!,
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            dates[index]["date"]!,
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            dates[index]["month"]!,
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.grey,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                "Malayalam · 2D",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
              ),
            ),
            Divider(),
            
            // Filters
            SizedBox(
              height: 45,
              child: ListView.builder(
                itemCount: book.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 13.0, top: 8, bottom: 8, right: 10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(),
                      ),
                      child: Center(
                        child: Text(
                          book[index],
                          style: TextStyle(fontSize: 12, color: Colors.red),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Theaters List
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: theaters.length,
                itemBuilder: (context, index) {
                  final theatre = theaters[index];
                  final List<String> times = theatre["times"];

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            theatre["name"],
                            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border, size: 18),
                          ),
                        ],
                      ),
                      const Text(
                        "Cancellation available",
                        style: TextStyle(fontSize: 12, color: Colors.green),
                      ),
                      const SizedBox(height: 10),

                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: times.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 2.4,
                          ),
                          itemBuilder: (context, timeIndex) {
                            return InkWell(
                              onTap: () {
                                _showSeatCountBottomSheet(
                                  context,
                                  widget.movieTitle,
                                  widget.movieImage,
                                  widget.movieDuration,
                                  widget.movieType,
                                  widget.movieRating,
                                  times[timeIndex],
                                  theatre["name"],
                                  "${dates[selectedDateIndex]["day"]}, ${dates[selectedDateIndex]["date"]} ${dates[selectedDateIndex]["month"]}",
                                );
                              },
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(color: const Color(0xFF4CAF50), width: 1),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      times[timeIndex],
                                      style: TextStyle(
                                        color: Color(0xFF4CAF50),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      "2K Dolby 7.1",
                                      style: TextStyle(fontSize: 10, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _showSeatCountBottomSheet(
  BuildContext context,
  String movieTitle,
  String movieImage,
  String movieDuration,
  String movieType,
  String movieRating,
  String showTime,
  String theatreName,
  String showDate,
) {
  int selectedSeat = 2;

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Container(
            height: 380,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Column(
              children: [
                const SizedBox(height: 12),
                Container(
                  height: 4,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "How many seats?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 90,
                  child: Image.asset(
                    _seatImage(selectedSeat),
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      final seat = index + 1;
                      final isSelected = seat == selectedSeat;

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedSeat = seat;
                          });
                        },
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: isSelected ? const Color(0xFFE53935) : Colors.transparent,
                          child: Text(
                            "$seat",
                            style: TextStyle(
                              fontSize: 13,
                              color: isSelected ? Colors.white : Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Column(
                  children: const [
                    Text("VGM RED", style: TextStyle(fontSize: 12, color: Colors.grey)),
                    SizedBox(height: 6),
                    Text("₹150", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    SizedBox(height: 6),
                    Text("AVAILABLE", style: TextStyle(fontSize: 12, color: Colors.green, fontWeight: FontWeight.w600)),
                  ],
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => SeatSelectionScreen(
                              maxSelectableSeats: selectedSeat,
                              movieTitle: movieTitle,
                              movieImage: movieImage,
                              movieDuration: movieDuration,
                              movieType: movieType,
                              movieRating: movieRating,
                              showTime: showTime,
                              theatreName: theatreName,
                              showDate: showDate,
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 233, 99, 97),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                      ),
                      child: const Text(
                        "Select Seats",
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    },
  );
}

String _seatImage(int seats) {
  if (seats == 1) return "assets/images/bike.png";
  else if (seats <= 2) return "assets/images/scooter.png";
  else if (seats <= 3) return "assets/images/auto.png";
  else if (seats <= 4) return "assets/images/car1.png";
  else if (seats <= 5) return "assets/images/car2.png";
  else if (seats <= 6) return "assets/images/car3.png";
  else if (seats <= 7) return "assets/images/van.png";
  else if (seats <= 8) return "assets/images/van.png";
  else if (seats <= 9) return "assets/images/bus.png";
  else return "assets/images/bus.png";
}