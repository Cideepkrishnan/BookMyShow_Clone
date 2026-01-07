import 'package:book_my_show/Home/Best%20Events/detail.dart';
import 'package:book_my_show/model.dart';
import 'package:flutter/material.dart';

class Planfortody extends StatefulWidget {
  const Planfortody({super.key});

  @override
  State<Planfortody> createState() => _PlanfortodyState();
}

class _PlanfortodyState extends State<Planfortody> {
  List<String> filter = ["Filters", "Sort By", "Browse By Venues"];

  final data = [
    {"title": "Music\nShows", "img": "assets/images/musicshow.jpg"},
    {"title": "Kids", "img": "assets/images/smileboy.jpg"},
    {"title": "Sports", "img": "assets/images/sportjapn.jpg"},
    {"title": "Amusement\nParks", "img": "assets/images/park.jpg"},
    {"title": "Performances", "img": "assets/images/perfo.webp"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, size: 14),
        ),
        title: Column(
          children: [
            Text(
              "Plan For Today",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 2),
            Text(
              "Kanhangad | 2 Events",
              style: TextStyle(fontSize: 11, color: Colors.grey),
            ),
          ],
        ),
        actions: const [Icon(Icons.search, size: 22), SizedBox(width: 12)],
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            // color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                itemCount: filter.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color(0xFFE53935),
                        side: BorderSide(color: Colors.grey.shade300),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(filter[index]),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 5),

          Container(
            // color: Colors.green,
            height: 380,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              scrollDirection: Axis.horizontal,
              itemCount: planfortoday.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 165,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                displaybottomsheet(context);
                              },
                              child: Container(
                                height: 230,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      planfortoday[index]['image']!,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 6),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                planfortoday[index]['date']!,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF6F6F6F),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                            SizedBox(height: 4),

                            /// Title
                            Text(
                              planfortoday[index]['title']!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1F1F1F),
                              ),
                            ),

                            const SizedBox(height: 2),

                            /// Venue
                            Text(
                              planfortoday[index]['venue']!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xFF8A8A8A),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              color: const Color(0xFFEEF1F1),
              // padding: const EdgeInsets.fromLTRB(16, 8, 0, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Explore Other Categories",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 16),
                          width: 90,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  data[index]["img"]!,
                                  height: 70,
                                  width: 70,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                data[index]["title"]!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 11,fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
