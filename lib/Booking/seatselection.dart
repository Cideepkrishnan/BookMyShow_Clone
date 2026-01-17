import 'package:book_my_show/Booking/conformbooking.dart';
import 'package:flutter/material.dart';

// class SeatSelectionScreen extends StatefulWidget {
//   final int maxSelectableSeats;
//   final String movieTitle;
//   final String showTime;
//   final String theatreName;

//   const SeatSelectionScreen({
//     super.key,
//     required this.maxSelectableSeats,
//     required this.movieTitle,
//     required this.showTime,
//     required this.theatreName,
//   });

//   @override
//   State<SeatSelectionScreen> createState() => _SeatSelectionScreenState();
// }

// class _SeatSelectionScreenState extends State<SeatSelectionScreen> {
//   int selectedTimeIndex = 0;
//   final Set<String> selectedSeats = {};

//   static const int seatPrice = 150;

//   final List<String> showTimes = [
//     "10:30 AM",
//     "02:30 PM",
//     "05:15 PM",
//     "05:30 PM",
//     "10:30 PM"
//   ];

//   final List<String> rows = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,

//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios, size: 20),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: Text(
//           widget.movieTitle,
//           style: TextStyle(color: Colors.black, fontSize: 14),
//         ),
//       ),

//       body: Column(
//         children: [
//                             //  price& ticket
//           Padding(
//             padding: const EdgeInsets.all(10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text("Rs.150  VGM RED", style: TextStyle(fontSize: 12)),
//                 Text(
//                   "✏ ${widget.maxSelectableSeats} Tickets",
//                   style: const TextStyle(
//                     color: Color(0xFFE53935),
//                     fontSize: 12,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//                                      //  time list
//           SizedBox(
//             height: 65,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: showTimes.length,
//               itemBuilder: (context, index) {
//                 final isSelected = index == selectedTimeIndex;

//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       selectedTimeIndex = index;
//                     });
//                   },
//                   child: Container(
//                     margin: const EdgeInsets.all(6),
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 22,
//                       vertical: 10,
//                     ),
//                     decoration: BoxDecoration(
//                       color: isSelected
//                           ? const Color(0xFF28A745)
//                           : Colors.white,
//                       borderRadius: BorderRadius.circular(3),
//                       border: Border.all(color: const Color(0xFF28A745)),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           showTimes[index],
//                           style: TextStyle(
//                             color: isSelected
//                                 ? Colors.white
//                                 : const Color(0xFF28A745),
//                             fontSize: 12,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                         const Text(
//                           "2K Dolby 7.1",
//                           style: TextStyle(fontSize: 7, color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),

//           const SizedBox(height: 6),
 
//                       //  seats
//           Expanded(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                             //  left side fixted label
//                 SizedBox(
//                   width: 30,
//                   height: 210,
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.grey.shade400,
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: ListView.builder(
//                       physics: const NeverScrollableScrollPhysics(),
//                       itemCount: rows.length,
//                       itemBuilder: (context, rowIndex) {
//                         return Container(
//                           margin: const EdgeInsets.all(3),
//                           alignment: Alignment.center,
//                           child: Text(
//                             rows[rowIndex],
//                             style: const TextStyle(
//                               fontSize: 10,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
 
//                                 //  seats grid
//                 Expanded(
//                   child: SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Column(
//                       children: List.generate(rows.length, (rowIndex) {
//                         return SizedBox(
//                           height: 22,
//                           child: Row(
//                             children: [
//                                               // left set

//                               ...List.generate(8, (seatIndex) {
//                                 final seatId =
//                                     "${rows[rowIndex]}${seatIndex + 1}";
//                                 final sold = rowIndex < 2 && seatIndex < 3;
//                                 final isSelected = selectedSeats.contains(
//                                   seatId,
//                                 );

//                                 return _seatBox(
//                                   seatIndex + 1,
//                                   sold,
//                                   isSelected,
//                                   () => _onSeatTap(seatId, sold),
//                                 );
//                               }),

//                               const SizedBox(width: 24),

//                                         // right set

//                               ...List.generate(8, (seatIndex) {
//                                 final seatId =
//                                     "${rows[rowIndex]}${seatIndex + 9}";
//                                 final sold = rowIndex < 2 && seatIndex < 2;
//                                 final isSelected = selectedSeats.contains(
//                                   seatId,
//                                 );

//                                 return _seatBox(
//                                   seatIndex + 9,
//                                   sold,
//                                   isSelected,
//                                   () => _onSeatTap(seatId, sold),
//                                 );
//                               }),
//                             ],
//                           ),
//                         );
//                       }),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
  
//                            //  screen image

//           Column(
//             children: [
//               Image.asset(
//                 "assets/images/screen.png",
//                 width: 350,
//                 fit: BoxFit.fitWidth,
//               ),
//               const SizedBox(height: 4),
//               const Text(
//                 "All eyes this way please!",
//                 style: TextStyle(fontSize: 11, color: Colors.grey),
//               ),
//               const SizedBox(height: 12),
//             ],
//           ),
  
//                    //   bottom box with text

//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               _legendBox(Colors.white, const Color(0xFF28A745), "Available"),
//               const SizedBox(width: 14),
//               _legendBox(
//                 const Color(0xFF28A745),
//                 const Color(0xFF28A745),
//                 "Selected",
//               ),
//               const SizedBox(width: 14),
//               _legendBox(Colors.grey, Colors.grey, "Sold"),
//             ],
//           ),

//           const SizedBox(height: 12),

//                            // pay button(appear only select the seats)

//           if (selectedSeats.isNotEmpty)
//             Container(
//               padding: const EdgeInsets.all(12),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.1),
//                     blurRadius: 6,
//                     offset: const Offset(0, -2),
//                   ),
//                 ],
//               ),
//               child: SizedBox(
//                 width: double.infinity,
//                 height: 46,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     _showTermsBottomSheet(
//                       context,
//                       widget.movieTitle,
//                       widget.showTime,
//                       widget.theatreName,
//                       selectedSeats.length,
//                       selectedSeats.toList(),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFFE53935),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: Text(
//                     "Pay ₹${selectedSeats.length * seatPrice}",
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }

//             //  seat tap

//   void _onSeatTap(String seatId, bool sold) {
//     if (sold) return;

//     setState(() {
//       if (selectedSeats.contains(seatId)) {
//         selectedSeats.remove(seatId);
//       } else if (selectedSeats.length < widget.maxSelectableSeats) {
//         selectedSeats.add(seatId);
//       }
//     });
//   }
  
//          //  seat container

//   Widget _seatBox(int number, bool sold, bool selected, VoidCallback onTap) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         margin: const EdgeInsets.all(3),
//         width: 14,
//         height: 14,
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           color: sold
//               ? Colors.grey.shade300
//               : selected
//               ? const Color(0xFF28A745)
//               : Colors.white,
//           borderRadius: BorderRadius.circular(3),
//           border: Border.all(
//             color: sold ? Colors.grey : const Color(0xFF28A745),
//           ),
//         ),
//         child: Text(
//           "$number",
//           style: TextStyle(
//             fontSize: 8,
//             color: sold || selected ? Colors.white : const Color(0xFF28A745),
//           ),
//         ),
//       ),
//     );
//   }

           

//   static Widget _legendBox(Color fill, Color border, String text) {
//     return Row(
//       children: [
//         Container(
//           width: 14,
//           height: 14,
//           decoration: BoxDecoration(
//             color: fill,
//             borderRadius: BorderRadius.circular(3),
//             border: Border.all(color: border),
//           ),
//         ),
//         const SizedBox(width: 6),
//         Text(text, style: const TextStyle(fontSize: 12)),
//       ],
//     );
//   }
// }

// void _showTermsBottomSheet(
//   BuildContext context,
//   String movieTitle,
//   String showTime,
//   String theatreName,
//   int ticketCount,
//   List<String> seats,
// ) {
//   showModalBottomSheet(
//     context: context,
//     backgroundColor: Colors.transparent,
//     isScrollControlled: true,
//     builder: (context) {
//       return Container(
//         decoration: const BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             const SizedBox(height: 10),

//             const SizedBox(height: 16),

//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   "Terms & Conditions",
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 10),

//             Flexible(
//               child: SingleChildScrollView(
//                 padding: const EdgeInsets.only(
//                   left: 10,
//                   top: 3,
//                   right: 10,
//                   bottom: 3,
//                 ),
//                 child: const Text(
//                   "Cinema reserves the right to cancel or modify showtimes "
//                   "without prior notice due to low occupancy, technical issues, "
//                   "or other operational reasons.\n\n"
//                   "As per State Govt, in cinemas, all movie goers should be "
//                   "atleast 1st dose vaccinated.\n\n"
//                   "1. Kindly Confirm Your Show Time And Date Before Booking Tickets.\n\n"
//                   "2. Online Tickets Should Be Collected From Ticket Counter.\n\n"
//                   "3. Please Purchase Tickets For Children Above 3 Years.\n\n"
//                   "4. The Movie Schedule, Screens And Seat Allocation Is Subject "
//                   "To Change Without Notice.\n\n"
//                   "5. Smoking Strictly Forbidden In The Multiplex Premises.\n\n"
//                   "6. Parking At Owners Risk.\n\n"
//                   "7. A minimum of 10 people are required to start the show.",
//                   style: TextStyle(fontSize: 12, height: 1.5),
//                 ),
//               ),
//             ),

//             Padding(
//               padding: const EdgeInsets.all(12),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: InkWell(
//                       onTap: () => Navigator.pop(context),
//                       child: Container(
//                         height: 38,
//                         alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           border: Border.all(color: const Color(0xFFE53935)),
//                         ),
//                         child: const Text(
//                           "Cancel",
//                           style: TextStyle(
//                             color: Color(0xFFE53935),
//                             fontSize: 16,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 12),
//                   Expanded(
//                     child: InkWell(
//                       onTap: () {
//                         Future.delayed(const Duration(milliseconds: 200), () {
//                           _showConfirmingSheet(
//                             context,
//                             movieTitle,
//                             showTime,
//                             theatreName,
//                             ticketCount,
//                             seats,
//                           );
//                         });
//                       },
//                       child: Container(
//                         height: 38,
//                         alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                           color: const Color(0xFFE53935),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: const Text(
//                           "Okay",
//                           style: TextStyle(color: Colors.white, fontSize: 16),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }

// void _showConfirmingSheet(
//   BuildContext parentContext,
//   String movieTitle,
//   String showTime,
//   String theatreName,
//   int ticketCount,
//   List<String> seats,
// ) {
//   showModalBottomSheet(
//     context: parentContext,
//     isScrollControlled: true,
//     isDismissible: false,
//     enableDrag: false,
//     backgroundColor: Colors.transparent,
//     builder: (sheetContext) {
//       return Container(
//         height: 200,
//         width: double.infinity,
//         decoration: const BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               "assets/images/ticketconform.png",
//               width: 300,
//               height: 200,
//             ),
//           ],
//         ),
//       );
//     },
//   );

//   Future.delayed(const Duration(seconds: 2), () {
//     Navigator.of(parentContext, rootNavigator: true).pop();

//     Navigator.of(parentContext).push(
//       MaterialPageRoute(
//         builder: (_) => ConfirmBookingScreen(
//           movieTitle: movieTitle,
//           showTime: showTime,
//           theatreName: theatreName,
//           ticketCount: ticketCount,
//           seats: seats,
//         ),
//       ),
//     );
//   });
// }




import 'package:book_my_show/Booking/conformbooking.dart';
import 'package:flutter/material.dart';

class SeatSelectionScreen extends StatefulWidget {
  final int maxSelectableSeats;
  final String movieTitle;
  final String movieImage;
  final String movieDuration;
  final String movieType;
  final String movieRating;
  final String showTime;
  final String theatreName;
  final String showDate;

  const SeatSelectionScreen({
    super.key,
    required this.maxSelectableSeats,
    required this.movieTitle,
    required this.movieImage,
    required this.movieDuration,
    required this.movieType,
    required this.movieRating,
    required this.showTime,
    required this.theatreName,
    required this.showDate,
  });

  @override
  State<SeatSelectionScreen> createState() => _SeatSelectionScreenState();
}

class _SeatSelectionScreenState extends State<SeatSelectionScreen> {
  int selectedTimeIndex = 0;
  final Set<String> selectedSeats = {};
  static const int seatPrice = 150;

  final List<String> showTimes = [
    "10:30 AM",
    "02:30 PM",
    "05:15 PM",
    "05:30 PM",
    "10:30 PM"
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
          icon: const Icon(Icons.arrow_back_ios, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          widget.movieTitle,
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Rs.150  VGM RED", style: TextStyle(fontSize: 12)),
                Text(
                  "✏ ${widget.maxSelectableSeats} Tickets",
                  style: const TextStyle(
                    color: Color(0xFFE53935),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          // Time selection list
          SizedBox(
            height: 65,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
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
                    margin: const EdgeInsets.all(6),
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
                        const Text(
                          "2K Dolby 7.1",
                          style: TextStyle(fontSize: 7, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 6),

          // Seats grid
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 30,
                  height: 210,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: rows.length,
                      itemBuilder: (context, rowIndex) {
                        return Container(
                          margin: const EdgeInsets.all(3),
                          alignment: Alignment.center,
                          child: Text(
                            rows[rowIndex],
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
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: List.generate(rows.length, (rowIndex) {
                        return SizedBox(
                          height: 22,
                          child: Row(
                            children: [
                              ...List.generate(8, (seatIndex) {
                                final seatId =
                                    "${rows[rowIndex]}${seatIndex + 1}";
                                final sold = rowIndex < 2 && seatIndex < 3;
                                final isSelected =
                                    selectedSeats.contains(seatId);
                                return _seatBox(
                                  seatIndex + 1,
                                  sold,
                                  isSelected,
                                  () => _onSeatTap(seatId, sold),
                                );
                              }),
                              const SizedBox(width: 24),
                              ...List.generate(8, (seatIndex) {
                                final seatId =
                                    "${rows[rowIndex]}${seatIndex + 9}";
                                final sold = rowIndex < 2 && seatIndex < 2;
                                final isSelected =
                                    selectedSeats.contains(seatId);
                                return _seatBox(
                                  seatIndex + 9,
                                  sold,
                                  isSelected,
                                  () => _onSeatTap(seatId, sold),
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

          // Screen image
          Column(
            children: [
              Image.asset(
                "assets/images/screen.png",
                width: 350,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(height: 4),
              const Text(
                "All eyes this way please!",
                style: TextStyle(fontSize: 11, color: Colors.grey),
              ),
              const SizedBox(height: 12),
            ],
          ),

          // Legend
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

          // Pay button
          if (selectedSeats.isNotEmpty)
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 6,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                height: 46,
                child: ElevatedButton(
                  onPressed: () {
                    _showTermsBottomSheet(
                      context,
                      widget.movieTitle,
                      widget.movieImage,
                      widget.movieDuration,
                      widget.movieType,
                      widget.movieRating,
                      widget.showTime,
                      widget.theatreName,
                      widget.showDate,
                      selectedSeats.length,
                      selectedSeats.toList(),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE53935),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Pay ₹${selectedSeats.length * seatPrice}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _onSeatTap(String seatId, bool sold) {
    if (sold) return;
    setState(() {
      if (selectedSeats.contains(seatId)) {
        selectedSeats.remove(seatId);
      } else if (selectedSeats.length < widget.maxSelectableSeats) {
        selectedSeats.add(seatId);
      }
    });
  }

  Widget _seatBox(int number, bool sold, bool selected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(3),
        width: 14,
        height: 14,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: sold
              ? Colors.grey.shade300
              : selected
                  ? const Color(0xFF28A745)
                  : Colors.white,
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
            color: sold ? Colors.grey : const Color(0xFF28A745),
          ),
        ),
        child: Text(
          "$number",
          style: TextStyle(
            fontSize: 8,
            color: sold || selected ? Colors.white : const Color(0xFF28A745),
          ),
        ),
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

// Terms & Conditions Bottom Sheet
void _showTermsBottomSheet(
  BuildContext context,
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
    builder: (context) {
      return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Terms & Conditions",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Flexible(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                child: const Text(
                  "Cinema reserves the right to cancel or modify showtimes "
                  "without prior notice due to low occupancy, technical issues, "
                  "or other operational reasons.\n\n"
                  "As per State Govt, in cinemas, all movie goers should be "
                  "atleast 1st dose vaccinated.\n\n"
                  "1. Kindly Confirm Your Show Time And Date Before Booking Tickets.\n\n"
                  "2. Online Tickets Should Be Collected From Ticket Counter.\n\n"
                  "3. Please Purchase Tickets For Children Above 3 Years.\n\n"
                  "4. The Movie Schedule, Screens And Seat Allocation Is Subject "
                  "To Change Without Notice.\n\n"
                  "5. Smoking Strictly Forbidden In The Multiplex Premises.\n\n"
                  "6. Parking At Owners Risk.\n\n"
                  "7. A minimum of 10 people are required to start the show.",
                  style: TextStyle(fontSize: 12, height: 1.5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: 38,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: const Color(0xFFE53935)),
                        ),
                        child: const Text(
                          "Cancel",
                          style: TextStyle(
                            color: Color(0xFFE53935),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Future.delayed(const Duration(milliseconds: 200), () {
                          _showConfirmingSheet(
                            context,
                            movieTitle,
                            movieImage,
                            movieDuration,
                            movieType,
                            movieRating,
                            showTime,
                            theatreName,
                            showDate,
                            ticketCount,
                            seats,
                          );
                        });
                      },
                      child: Container(
                        height: 38,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE53935),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "Okay",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}

// Confirming Animation Bottom Sheet
void _showConfirmingSheet(
  BuildContext parentContext,
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
    context: parentContext,
    isScrollControlled: true,
    isDismissible: false,
    enableDrag: false,
    backgroundColor: Colors.transparent,
    builder: (sheetContext) {
      return Container(
        height: 200,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/ticketconform.png",
              width: 300,
              height: 200,
            ),
          ],
        ),
      );
    },
  );

  Future.delayed(const Duration(seconds: 2), () {
    Navigator.of(parentContext, rootNavigator: true).pop();
    Navigator.of(parentContext).push(
      MaterialPageRoute(
        builder: (_) => ConfirmBookingScreen(
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
        ),
      ),
    );
  });
}