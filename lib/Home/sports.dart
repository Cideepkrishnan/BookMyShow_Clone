import 'package:flutter/material.dart';

class SportsScreen extends StatefulWidget {
  const SportsScreen({super.key});

  @override
  State<SportsScreen> createState() => _SportsScreenState();
}

class _SportsScreenState extends State<SportsScreen> {
  final List<Map<String, dynamic>> filterOptions = [
    {"title": "Filters", "width": 100.0},
    {"title": "Sort By", "width": 100.0},
    {"title": "Browse By Venues", "width": 180.0},
  ];

  final List<Map<String, String>> sportsEvents = [
    {
      "image":
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U3VuLCAxIEZlYg%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00478654-jfarhrfvrr-portrait.jpg",
      "date": "Sun, 1 Feb",
      "title": "Kolkata vs Ahmedabad & Mumbai vs Bengaluru",
      "location": "Lalbhai Contractor Stadium: Surat",
      "type": "T10",
    },
    {
      "image":
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U3VuLCAyNSBKYW4%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00478654-jfarhrfvrr-portrait.jpg",
      "date": "Sun, 25 Jan",
      "title": "India Vs New Zealand 3rd T20I",
      "location": "ACA STADIUM, GUWAHATI",
      "type": "T20",
    },
    {
      "image":
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U3VuLCAxIE1hcg%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00478245-gesthhlbwn-portrait.jpg",
      "date": "Sun, 1 Mar",
      "title": "Red Bull Moto Jam (Pre-Registration)",
      "location": "Bandra-Kurla Complex: Mumbai",
      "type": "Bike Racing",
    },
    {
      "image":
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-RnJpLCA5IEphbiBvbndhcmRz,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end:l-image,i-discovery-catalog@@icons@@bundle-icon-shadow-4x.png,lx-15,ly-15,w-50,l-end/et00465007-lbsnyszhcf-portrait.jpg",
      "date": "Fri, 9 Jan onwards",
      "title": "ISPL Season 3",
      "location": "Multiple Venues",
      "type": "T10",
    },
    {
      "image":
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-TW9uLCAxOSBKYW4%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00475921-ccrlujlwtk-portrait.jpg",
      "date": "Mon, 19 Jan",
      "title": "Ahmedabad vs Chennai",
      "location": "Dadoji Konddev Stadium: Thane",
      "type": "T10",
    },
    {
      "image":
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-TW9uLCAyNiBKYW4%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00475928-auklrgwnxh-portrait.jpg",
      "date": "Mon, 26 Jan",
      "title": "Delhi vs Kolkata",
      "location": "Dadoji Konddev Stadium: Thane",
      "type": "T10",
    },
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
          icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Sports",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Kanhangad | 48 Events",
              style: TextStyle(color: Colors.grey, fontSize: 11),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/sprtmen.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              height: 44,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: filterOptions.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // margin: EdgeInsets.only(right: index == filterOptions.length - 1 ? 0 : 12),
                      //width: filterOptions[index]["width"],
                      padding: EdgeInsets.only(
                        top: 3,
                        bottom: 3,
                        left: 10,
                        right: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Center(
                        child: Text(
                          filterOptions[index]["title"]!,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: sportsEvents.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 0.53, 
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                   // color: Colors.amber,
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// IMAGE (separate height)
                        Container(
                          height: 210, 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: NetworkImage(
                                sportsEvents[index]["image"]!,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        const SizedBox(height: 4),
                        Container(
                           width: double.infinity,
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
                            sportsEvents[index]["date"]!,
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),

                        const SizedBox(height: 4),
                        Text(
                          sportsEvents[index]["title"]!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            height: 1.3,
                          ),
                        ),

                        const SizedBox(height: 2),
                        Text(
                          sportsEvents[index]["location"]!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          sportsEvents[index]["type"]!,
                          style: const TextStyle(
                            fontSize: 9,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
