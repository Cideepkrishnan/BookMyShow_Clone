import 'package:flutter/material.dart';

class Kidszone extends StatefulWidget {
  const Kidszone({super.key});

  @override
  State<Kidszone> createState() => _KidszoneState();
}

class _KidszoneState extends State<Kidszone> {
  List<Map<String, String>> filterButtons = [
    {"title": "Filters"},
    {"title": "Sort By"},
    {"title": "Browse By Venues"},
  ];

  List<Map<String, String>> events = [
    {
      "image": "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U3VuLCAxOCBKYW4gb253YXJkcw%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end:l-image,i-discovery-catalog@@icons@@bundle-icon-shadow-4x.png,lx-15,ly-15,w-50,l-end/et00346481-cgquweumxc-portrait.jpg",
      "date": "Sun, 18 Jan onwards",
      "title": "Rambo Circus - Group Page",
      "venue": "Multiple Venues",
      "category": "Circus",
    },
    {
      "image": "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U3VuLCAxOCBKYW4%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00367500-ncqttkbttu-portrait.jpg",
      "date": "Sun, 18 Jan",
      "title": "Solve Rubik' Cube in 6 Steps!",
      "venue": "Happy Skills Events: Ghatkopar",
      "category": "Education",
    },
    {
      "image": "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-VHVlLCAyMCBKYW4gb253YXJkcw%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00316429-jbhjldrrfr-portrait.jpg",
      "date": "Tue, 20 Jan onwards",
      "title": "Magic Beans - STORY TIME (ONLINE)",
      "venue": "Magic Beans-Kemps:Mumbai",
      "category": "Entertainment",
    },
  ];

  List<Map<String, String>> categories = [
    {"title": "Education"},
    {"title": "Entertainment"},
    {"title": "Hobby Classes"},
    {"title": "Summer Camps"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Kids",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Kanhangad | 3 Events",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 11,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.black, size: 24),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Container(
              height: 35,
              padding: const EdgeInsets.only(left: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filterButtons.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 12),
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 10,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: const Color(0xFF989696)),
                    ),
                    child: Center(
                      child: Text(
                        filterButtons[index]["title"]!,
                        style: const TextStyle(
                          color: Color(0xFFE53935),
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 360,
              //color: Colors.amber,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: events.length,
                padding: const EdgeInsets.only(left: 16),
                itemBuilder: (context, index) {
                  return Container(
                    width: 155,
                    margin: const EdgeInsets.only(right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 230,
                          //width: 280,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: NetworkImage(events[index]["image"]!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          width: 165,
                          padding: const EdgeInsets.only(
                            left: 8,
                            right: 8,
                            top: 4,
                            bottom: 4,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF2FAFF),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            events[index]["date"]!,
                            style: const TextStyle(
                              fontSize: 11,
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          events[index]["title"]!,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 3),
                        Text(
                          events[index]["venue"]!,
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey.shade600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          events[index]["category"]!,
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            //const SizedBox(height: 20),
            Container(
              color: Colors.grey.shade200,
              padding: const EdgeInsets.only(top: 10, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 35,
                    padding: const EdgeInsets.only(left: 16),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 12),
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                            top: 5,
                            bottom: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            //border: Border.all(color: const Color(0xFFE53935)),
                          ),
                          child: Center(
                            child: Text(
                              categories[index]["title"]!,
                              style: const TextStyle(
                                color: Color(0xFFE53935),
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}