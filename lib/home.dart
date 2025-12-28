import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> banners = [
    "https://static.vecteezy.com/system/resources/previews/003/599/325/large_2x/online-shopping-on-phone-buy-sell-business-digital-web-banner-application-money-advertising-payment-ecommerce-illustration-search-vector.jpg",
    "https://static.vecteezy.com/system/resources/previews/001/937/403/original/paper-art-shopping-online-on-smartphone-sale-promotion-backgroud-banner-for-market-ecommerce-free-vector.jpg",
    "https://static.vecteezy.com/system/resources/previews/001/750/452/large_2x/online-shopping-and-e-commerce-banner-vector.jpg",
    //"https://static.vecteezy.com/system/resources/previews/000/621/356/original/vector-online-shop-or-ecommerce-landing-page-template.jpg"
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "It All Starts Here!",
              style: TextStyle(
                color: Colors.black,
                //fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2),
            Text(
              "Cherupuzha",
              style: TextStyle(color: Colors.red, fontSize: 12),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_outlined),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.red,
                  child: const Text(
                    "4",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.amber,
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.grey.shade200,
                            child: Icon(Icons.abc, color: Colors.red),
                          ),
                          const SizedBox(height: 6),
                          Text("label", style: const TextStyle(fontSize: 12)),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                // color: Colors.black,
                borderRadius: BorderRadius.circular(22),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: Stack(
                  children: [
                    // Carousel moves INSIDE this container
                    CarouselSlider.builder(
                      itemCount: banners.length,
                      itemBuilder: (context, index, realIndex) {
                        return Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.network(banners[index], fit: BoxFit.cover),

                            // Gradient overlay
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    const Color(0x8A000000),
                                    Colors.transparent,
                                  ],
                                ),
                              ),
                            ),

                            // Button inside container
                            Positioned(
                              bottom: 30,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 22,
                                      vertical: 10,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: const Text(
                                    "Know More",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      options: CarouselOptions(
                        height: double.infinity,
                        viewportFraction: 1.0, // VERY IMPORTANT
                        autoPlay: true,
                        enlargeCenterPage: false,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),
                    ),

                    // Dots indicator INSIDE same container
                    Positioned(
                      bottom: -5,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: banners.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: 6,
                                    width: currentIndex == index ? 8 : 6,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: currentIndex == index
                                          ? Colors.white
                                          : Colors.grey,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                        //  List.generate(banners.length, (index) {
                        //   return AnimatedContainer(
                        //     duration: const Duration(milliseconds: 300),
                        //     margin: const EdgeInsets.symmetric(horizontal: 4),
                        //     width: currentIndex == index ? 10 : 8,
                        //     height: 8,
                        //     decoration: BoxDecoration(
                        //       shape: BoxShape.circle,
                        //       color: currentIndex == index
                        //           ? Colors.white
                        //           : Colors.grey,
                        //     ),
                        //   );
                        // }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Container(
                  height: 90,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF021B2A),
                        Color(0xFF0A2C47),
                        Color(0xFF000814),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Row(
                    children: [
                      /// 🎬 Left Image Section
                      Expanded(
                        flex: 6,
                        child: Image.network(
                          "https://www.dvdsreleasedates.com/posters/800/A/Anora-2024-movie-poster.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),

                      /// 🎥 Right Content Section
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// Platforms
                              Row(
                                children: const [
                                  Text(
                                    "the peacock",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "hub",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 6),

                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    "JioHotstar",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 8),

                              /// Watch Now Button
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "WATCH NOW",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.cyanAccent,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
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
            ),

            SizedBox(height: 10),

            /// Recommended Movies
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Recommended Movies",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 12),

            Container(
              color: Colors.green,
              height: 260,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 12),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    width: 160,
                    margin: const EdgeInsets.only(right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            banners[index],
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.red, size: 16),
                            const SizedBox(width: 4),
                            Text("6.9"),
                            const SizedBox(width: 6),
                            Text(
                              "9.2K+ votes",
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Movie name",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  // Navigate to cinema screen
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3F6FA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      /// 🎨 Left Illustration
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFE1C7),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Icon(
                          Icons.map_outlined,
                          size: 34,
                          color: Colors.redAccent,
                        ),
                      ),

                      const SizedBox(width: 16),

                      /// 📝 Text Section
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "BROWSE BY CINEMA",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            Text(
                              "See what’s playing in cinemas near you",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),

                      /// ➡ Arrow
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    // borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.network(
                        "https://mir-s3-cdn-cf.behance.net/project_modules/1400/c7a83a72879611.5bf674d4f05f9.jpg",
                        height: 220,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Apply for the best offer now",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 12),
                            SizedBox(
                              width: double.infinity,
                              height: 48,
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.red),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Text(
                                  "Apply Now",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            /// Recommended Movies
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "New Year Parties",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 6),

            /// Offer Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Welcome Offer. Use Code NYE250 at checkout",
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
            ),

            SizedBox(height: 20),
            Container(
              //color: Colors.green,
              height: 320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 12),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    width: 160,
                    margin: const EdgeInsets.only(right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            banners[index],
                            height: 220,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          index == 0 ? "Wed, 31 Dec" : "Wed, 31 Dec onwards",
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                        SizedBox(height: 4),

                        /// Event Title
                        Text(
                          index == 0
                              ? "Vedan Live - A Boche New Year 2026"
                              : "SPACETECH FESTIVAL WINTER EDITION",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 4),

                        /// Venue
                        Text(
                          index == 0
                              ? "Boche 1000 Acre: Wayanad"
                              : "Palm Bliss Resort & Spa: Kullu",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 10),

            /// Recommended Movies
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Best Events This Week",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 6),

            /// Subtitle
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Monday to Sunday, we got you covered",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),

            SizedBox(height: 15),
            Container(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(28),
                        child: Stack(
                          children: [
                            /// 🖼 Background Image
                            Positioned.fill(
                              child: Image.network(
                                "https://www.resellerclub.com/blog/wp-content/uploads/2020/11/linux-vs-windows-vps-which-is-the-best-os-for-vps-bb.jpg",
                                fit: BoxFit.cover,
                                alignment: Alignment.centerLeft,
                              ),
                            ),

                            /// 🎨 Color Overlay
                            Positioned.fill(
                              child: Container(color: Color(0x6CE6A3B3)),
                            ),

                            /// 📝 Text Content
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                                left: 10,
                                bottom: 5,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "PLAN FOR\nTODAY",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      height: 1.2,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "6 Events",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 120,

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(28),
                        child: Stack(
                          children: [
                            /// 🖼 Background Image
                            Positioned.fill(
                              child: Image.network(
                                "https://www.theladders.com/wp-content/uploads/happy_millennials2_190528-800x450.jpg",
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              ),
                            ),

                            /// 🎨 Color Overlay
                            Positioned.fill(
                              child: Container(color: Color(0x8870AF1D)),
                            ),

                            /// 📝 Text Content
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                                left: 10,
                                bottom: 5,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "PLAN FOR\nTOMORROW",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      height: 1.2,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "10+ Events",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 120,

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(28),
                        child: Stack(
                          children: [
                            /// 🖼 Background Image
                            Positioned.fill(
                              child: Image.network(
                                "https://st4.depositphotos.com/1017228/19776/i/1600/depositphotos_197764318-stock-photo-group-happy-multiracial-people-showing.jpg",
                                fit: BoxFit.cover,
                                alignment: Alignment.centerLeft,
                              ),
                            ),

                            /// 🎨 Color Overlay
                            Positioned.fill(
                              child: Container(color: Color(0xAB7CB2C0)),
                            ),

                            /// 📝 Text Content
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                                left: 10,
                                bottom: 5,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "WEEKEND \n PLANS",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      height: 1.2,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "20+ Events",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 90,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF0E0E0E),
                        Color(0xFF1C1C1C),
                       // Color(0xFF0B0B0B),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Stack(
                    children: [
                      /// Diagonal Gloss Effect
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Image.network(
                          "https://assets-in.bmscdn.com/discovery-catalog/collections/tr:w-1440,h-120/best-of-bms-banner-2025-web-collection-202512100543.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: [
                      //     /// Left Section
                      //     Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         /// CTA Button
                      //         Container(
                      //           padding: const EdgeInsets.symmetric(
                      //             horizontal: 10,
                      //             vertical: 6,
                      //           ),
                      //           decoration: BoxDecoration(
                      //             color: Colors.white,
                      //             borderRadius: BorderRadius.circular(6),
                      //           ),
                      //           child: const Text(
                      //             "Know More",
                      //             style: TextStyle(
                      //               color: Colors.red,
                      //               fontWeight: FontWeight.bold,
                      //               fontSize: 12,
                      //             ),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            /// Recommended Movies
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Browse Events By Category",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 6),

            /// Subtitle
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Live events for all your entertainment needs",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),

            Container(
              height: 150,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 240,
                    margin: const EdgeInsets.only(right: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      gradient: LinearGradient(
                        colors: [Color(0xFF7AA1D2), Color(0xFF8EC5FC)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "title",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                          ),
                        ),
                        const Spacer(),

                        Text(
                          "subtitle",
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
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
    );
  }
}
