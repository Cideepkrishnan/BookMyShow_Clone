import 'package:flutter/material.dart';

class LiveEvent extends StatefulWidget {
  const LiveEvent({super.key});

  @override
  State<LiveEvent> createState() => _LiveEventState();
}

class _LiveEventState extends State<LiveEvent> {
  final event = [
    {"title": "Music\nShows", "img": "assets/images/musicshow.jpg"},
    {"title": "Kids", "img": "assets/images/smileboy.jpg"},
    {"title": "Sports", "img": "assets/images/sportjapn.jpg"},
    {"title": "Amusement\nParks", "img": "assets/images/park.jpg"},
    {"title": "Performances", "img": "assets/images/perfo.webp"},
  ];

  final List<Map<String, String>> comedyList = [
    {
      'image':
          'https://images.template.net/531694/Comedy-Club-Poster-Template-edit-online.png',
      'date': 'Fri, 9 Jan onwards',
      'title': 'Comedy Ladder',
      'subtitle': 'Multiple Venues',
    },
    {
      'image': 'https://images.unsplash.com/photo-1527224857830-43a7acc85260',
      'date': 'Fri, 16 Jan onwards',
      'title': 'Kisi Ko Batana Mat Ft. Anubhav Singh Bassi',
      'subtitle': 'MLR Convention Centre',
    },
    {
      'image': 'https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91',
      'date': 'Thu, 29 Jan',
      'title': 'Chalta Hai Comedy',
      'subtitle': 'Multiple Venues',
    },
  ];

  final List<Map<String, String>> weekendCategories = [
    {
      "title": "Music\nShows",
      "events": "3 EVENTS",
      "image": "assets/images/musicandshow.jpg",
      "gradient": "[Color(0xFF3EE0C1), Color(0xFF2BB0E6)]",
    },
    {
      "title": "Amusement\nPark",
      "events": "2 EVENTS",
      "image": "assets/images/amusment.jpg",
      "gradient": "[Color(0xFF9BA7FF), Color(0xFF5A9CFD)]",
    },
    {
      "title": "Comedy\nShows",
      "events": "1 EVENT",
      "image": "assets/images/comedy.jpg",
      "gradient": " [Color(0xFF3EE0C1), Color(0xFF3AA4D8)]",
    },
    {
      "title": "Plays &\nPerformances",
      "events": "1 EVENT",
      "image": "assets/images/plays.jpg",
      "gradient": "[Color(0xFF6EC6FF), Color(0xFF5A8DEE)]",
    },
    {
      "title": "Exhibitions",
      "events": "1 EVENT",
      "image": "assets/images/exhibition.jpg",
      "gradient": "[Color(0xFF6EC6FF), Color(0xFF5A8DEE)]",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Live Events",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(height: 1),
            Text(
              "Kanhangad >",
              style: TextStyle(color: Colors.grey, fontSize: 11),
            ),
          ],
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                // padding: const EdgeInsets.fromLTRB(16, 8, 0, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: event.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 16),
                            width: 90,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(
                                    event[index]["img"]!,
                                    height: 70,
                                    width: 70,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  event[index]["title"]!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
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
            // const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Choices Vast But Filling Fast',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            // const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: const Text(
                'Hurry, explore our range of fun events',
                style: TextStyle(fontSize: 11, color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 130,
                //color: Colors.amber,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF7EDBC3), Color(0xFF0B7D6E)],
                          ),
                        ),
                        child: Stack(
                          children: [
                            /// 🖼 Background Image
                            Positioned(
                              bottom: 23,
                              left: -55,
                              child: Image.asset(
                                "assets/images/announcement.png",
                                height: 95,
                                fit: BoxFit.cover,
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Text(
                                "MUST-ATTEND",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFFFF9A8B), Color(0xFFE53935)],
                          ),
                        ),
                        width: 115,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 23,
                              left: 14,
                              child: Image.asset(
                                "assets/images/fastfil.png",
                                height: 95,
                                fit: BoxFit.cover,
                                alignment: Alignment.centerLeft,
                              ),
                            ),

                            Positioned(
                              bottom: 9,
                              left: 10,
                              child: Text(
                                "FAST-FILLING",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              // height: 350,
              width: double.infinity,
              color: const Color(0xFF2E2E2E),
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Top Comedy Shows',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 320,
                    // color: Colors.blue,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 16, right: 8),
                          child: Container(
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    comedyList[index]['image']!,
                                    height: 200,
                                    width: 120,
                                    fit: BoxFit.cover,
                                  ),
                                ),

                                const SizedBox(height: 10),
                                Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10.0,
                                        right: 10,
                                        bottom: 4,
                                        top: 4,
                                      ),
                                      child: Text(
                                        comedyList[index]['date']!,
                                        style: const TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 5.0,
                                    right: 5,
                                    bottom: 4,
                                    //top: 4,
                                  ),
                                  child: Text(
                                    comedyList[index]['title']!,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 5.0,
                                    right: 5,
                                    bottom: 2,
                                    //top: 4,
                                  ),
                                  child: Text(
                                    comedyList[index]['subtitle']!,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Get Set For The Weekend",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            //SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "With this fantastic event line-up",
                style: TextStyle(fontSize: 11, color: Colors.grey),
              ),
            ),
            Container(
              height: 170,
             // color: Colors.amber,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: weekendCategories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 170,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF9BA7FF), Color(0xFF5A9CFD)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(22),
                        image: DecorationImage(
                          image: AssetImage(
                           weekendCategories[index]['image']!,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              weekendCategories[index]['title']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                height: 1.2,
                              ),
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),

                          const SizedBox(height: 2),

                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              weekendCategories[index]['events']!,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
