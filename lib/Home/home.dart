import 'package:book_my_show/Home/browseByCinema.dart';
import 'package:book_my_show/model.dart';
import 'package:book_my_show/movie_detail.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

 
  List<String> banners = [
    "assets/images/yesbnk.jpg",
    "assets/images/iccmen.jpg",
    "assets/images/newyear.jpg",
  ];
  int currentIndex = 0;

  int currentIndeex = 0;

  List<String> jio = [
    "assets/images/Anora.jpg",
    "assets/images/allher.jpg",
    "assets/images/Landman.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "It All Starts Here!",
              style: TextStyle(
                fontSize: 19,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2),
            Text(
              "Kanhangad  >",
              style: TextStyle(color: Colors.red, fontSize: 11, fontWeight: FontWeight.w400,),
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
                top: 8,
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
              padding: const EdgeInsets.only(top: 4,bottom: 10,right: 10),
              child: Container(
                // color: Colors.amber,
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => categoryList[index]["screen"],));
                      },
                      child: Container(
                        // color: Colors.amber,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(7,), 
                                  child: Image.asset(
                                    categoryList[index]["icon"]!,
                                    width: 20,
                                    height: 20,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            //const SizedBox(height: 6),
                            Text(
                              categoryList[index]['title']!,
                               textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 9.5,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              height: 170,
              margin: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                // color: Colors.black,
                borderRadius: BorderRadius.circular(11),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(11),
                child: Stack(
                  children: [
                    // Carousel moves INSIDE this container
                    CarouselSlider.builder(
                      itemCount: banners.length,
                      itemBuilder: (context, index, realIndex) {
                        return Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.asset(banners[index], fit: BoxFit.fill),

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
                                child: SizedBox(
                                  height: 26,
                                  width: 100,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      // padding: const EdgeInsets.symmetric(
                                      //   horizontal: 22,
                                      //   vertical: 10,
                                      // ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    child: Text(
                                      "Know More",
                                      style: TextStyle(
                                        fontSize: 9.5,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
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
                            height: 35,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: banners.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    height: 4,
                                    width: currentIndex == index ? 8 : 4,
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(7),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 65,
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
                      Expanded(
                        flex: 7,
                        child: CarouselSlider.builder(
                          itemCount: banners.length,
                          itemBuilder: (context, index, realIndex) {
                            return Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.asset(jio[index], fit: BoxFit.cover),
                              ],
                            );
                          },
                          options: CarouselOptions(
                            height: double.infinity,
                            viewportFraction: 1.1, 
                            autoPlay: true,
                            autoPlayAnimationDuration: Duration(seconds: 4),
                            scrollPhysics: BouncingScrollPhysics(),
                            enlargeCenterPage: false,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                          ),
                        ),
                      ),

                      ///  Right Content Section
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    "hub",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 3),

                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 13,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "JioHotstar",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 2),

                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "WATCH NOW",
                                  style: TextStyle(
                                    fontSize: 10,
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

            SizedBox(height: 5),

            /// Recommended Movies
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Recommended Movies",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),

            SizedBox(height: 5),

            Container(
              // color: Colors.green,
              height: 320,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                scrollDirection: Axis.horizontal,
                itemCount: Recomendedmovies.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 155,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MovieDetail(
                                        movie: DetailMovies[index],
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 250,
                                  width: 175,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        Recomendedmovies[index]["image"],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.red,
                                      size: 16,
                                    ),
                                    const SizedBox(width: 2),
                                    Text(
                                      Recomendedmovies[index]["rating"],
                                      style: const TextStyle(
                                        fontSize: 11,
                                      ),
                                    ),

                                    Spacer(),

                                    Text(
                                      Recomendedmovies[index]["votes"],
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(width: 3),
                                    const Text(
                                      "Votes",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 9,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 4),

                              Text(
                                Recomendedmovies[index]["title"],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
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
              padding: const EdgeInsets.all(12),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Browsebycinema(),));
                  // Navigate to cinema screen
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                   color: const Color(0xFFEFF7FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFE1C7),
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://img.freepik.com/vecteurs-premium/cinema-logo_23-2147503279.jpg",
                             
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      const SizedBox(width: 16),

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
                              "See what's playing in cinemas near you",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.blue,
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
              padding: const EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 220,
                      width: double.infinity,
                      child: Image.network(
                        "https://mir-s3-cdn-cf.behance.net/project_modules/1400/c7a83a72879611.5bf674d4f05f9.jpg",

                        fit: BoxFit.cover,
                      ),
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
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 12),
                          SizedBox(
                            width: double.infinity,
                            height: 38,
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
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
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
            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "New Year Parties",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 3),

            /// Offer Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Welcome Offer. Use Code NYE250 at checkout",
                style: TextStyle(fontSize: 13, color: Colors.blue),
              ),
            ),

            SizedBox(height: 20),
            Container(
              //color: Colors.green,
              height: 340,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 12),
                itemCount: newyear.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 155,
                    margin: const EdgeInsets.only(right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 240,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(newyear[index]['image']!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          newyear[index]['date']!,
                          style: TextStyle(fontSize: 11, color: Colors.black54),
                        ),
                        SizedBox(height: 4),
                        Text(
                          newyear[index]['title']!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                        newyear[index]['venue']!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Best Events This Week",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 2),

            /// Subtitle
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Monday to Sunday, we got you covered",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),

            SizedBox(height: 15),
            Container(
              height: 120,
              //color: Colors.amber,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 110,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Image.network(
                                "https://www.resellerclub.com/blog/wp-content/uploads/2020/11/linux-vs-windows-vps-which-is-the-best-os-for-vps-bb.jpg",
                                fit: BoxFit.cover,
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                            Positioned.fill(
                              child: Container(color: Color(0x43E6A3B3)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 35,
                                left: 8,
                                bottom: 8,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "PLAN FOR\nTODAY",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      height: 1.2,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "6 Events",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
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
                      width: 110,

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
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
                              child: Container(color: Color(0x6A70AF1D)),
                            ),

                            /// 📝 Text Content
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 40,
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
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      height: 1.2,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "10+ Events",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
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
                      width: 110,

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Stack(
                          children: [
                            /// 🖼 Background Image
                            Positioned.fill(
                              child: Image.network(
                                "https://st4.depositphotos.com/1017228/19776/i/1600/depositphotos_197764318-stock-photo-group-happy-multiracial-people-showing.jpg",
                                fit: BoxFit.fitHeight,
                                alignment: Alignment.centerLeft,
                              ),
                            ),

                            /// 🎨 Color Overlay
                            Positioned.fill(
                              child: Container(color: Color(0x577CB2C0)),
                            ),

                            /// 📝 Text Content
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 40,
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
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      height: 1.2,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "20+ Events",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
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
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Browse Events By Category",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            //SizedBox(height: 6),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Live events for all your entertainment needs",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            SizedBox(height: 12),

            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 16),
                children: [
                  Container(
                    width: 150,
                    clipBehavior: Clip.hardEdge,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      image: DecorationImage(image: AssetImage( "assets/images/icmenst20.png",),fit: BoxFit.cover)
                      // gradient: LinearGradient(
                      //   colors: [Color(0xFF1C1B5A), Color(0xFF3A3A9A)],
                      //   begin: Alignment.topLeft,
                      //   end: Alignment.bottomRight,
                      // ),
                    ),
                    // child: Stack(
                    //   children: [
                    //     /// Right Image
                    //     Positioned(
                    //       right: 5,
                    //       bottom: 10,
                    //       child: ClipRRect(
                    //         borderRadius: BorderRadius.circular(14),
                    //         child: Image.asset(
                    //           "assets/images/t20.png",
                    //           height: 55,
                    //           fit: BoxFit.cover,
                    //         ),
                    //       ),
                    //     ),
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         Padding(
                    //           padding: const EdgeInsets.only(
                    //             top: 16.0,
                    //             left: 13,
                    //           ),
                    //           child: Text(
                    //             "ICC MEN'S\nT20WC\n2026",
                    //             style: TextStyle(
                    //               color: Colors.white,
                    //               fontSize: 16,
                    //               fontWeight: FontWeight.bold,
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // ),
                  ),
                  Container(
                    width: 150,
                    clipBehavior: Clip.hardEdge,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                        image: DecorationImage(image: AssetImage( "assets/images/cmedyshow.png",),fit: BoxFit.cover)
                      // gradient: LinearGradient(
                      //   colors: [
                      //     Color(0xFFDAC23E),
                      //     Color.fromARGB(255, 215, 171, 60),
                      //   ],
                      //   begin: Alignment.topLeft,
                      //   end: Alignment.bottomRight,
                      // ),
                    ),
                    // child: Stack(
                    //   children: [
                    //     /// Right Image
                    //     Positioned(
                    //       right: -30,
                    //       bottom: -20,
                    //       child: ClipRRect(
                    //         borderRadius: BorderRadius.circular(14),
                    //         child: Image.network(
                    //           "https://static.vecteezy.com/system/resources/previews/052/879/272/non_2x/young-man-in-yellow-shirt-with-glasses-smiling-confidently-png.png",
                    //           height: 110,
                    //           fit: BoxFit.cover,
                    //         ),
                    //       ),
                    //     ),
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         Padding(
                    //           padding: const EdgeInsets.only(
                    //             top: 22.0,
                    //             left: 13,
                    //           ),
                    //           child: Text(
                    //             "COMEDY\nSHOWS",
                    //             style: TextStyle(
                    //               color: Colors.white,
                    //               fontSize: 16,
                    //               fontWeight: FontWeight.bold,
                    //             ),
                    //           ),
                    //         ),
                    //         //SizedBox(height: 8),
                    //         Padding(
                    //           padding: const EdgeInsets.only(
                    //             bottom: 4.0,
                    //             left: 13,
                    //           ),
                    //           child: Text(
                    //             "3 Events",
                    //             style: const TextStyle(
                    //               color: Colors.white70,
                    //               fontSize: 10,
                    //               fontWeight: FontWeight.bold,
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // ),
                  ),
                  Container(
                    width: 150,
                    clipBehavior: Clip.hardEdge,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                       image: DecorationImage(image: AssetImage( "assets/images/msicshow.png",),fit: BoxFit.cover)
                      // gradient: LinearGradient(
                      //   colors: [Color(0xFF7FA8D8), Color(0xFF5E85C5)],
                      //   begin: Alignment.topLeft,
                      //   end: Alignment.bottomRight,
                      // ),
                    ),
                    // child: Stack(
                    //   children: [
                    //     /// Right Image
                    //     Positioned(
                    //       right: -15,
                    //       bottom: -30,
                    //       child: ClipRRect(
                    //         borderRadius: BorderRadius.circular(14),
                    //         child: Image.network(
                    //           "https://static.vecteezy.com/system/resources/previews/023/499/158/non_2x/woman-with-headphone-isolated-generative-ai-png.png",
                    //           height: 130,
                    //           fit: BoxFit.fitWidth,
                    //         ),
                    //       ),
                    //     ),
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         Padding(
                    //           padding: const EdgeInsets.only(
                    //             top: 22.0,
                    //             left: 13,
                    //           ),
                    //           child: Text(
                    //             "MUSIC\nSHOWS",
                    //             style: TextStyle(
                    //               color: Colors.white,
                    //               fontSize: 18,
                    //               fontWeight: FontWeight.bold,
                    //             ),
                    //           ),
                    //         ),
                    //         //SizedBox(height: 8),
                    //         Padding(
                    //           padding: const EdgeInsets.only(
                    //             bottom: 4.0,
                    //             left: 13,
                    //           ),
                    //           child: Text(
                    //             "15+ Events",
                    //             style: const TextStyle(
                    //               color: Colors.white70,
                    //               fontSize: 10,
                    //               fontWeight: FontWeight.bold,
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // ),
                  ),
                  Container(
                    width: 150,
                    clipBehavior: Clip.hardEdge,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                        image: DecorationImage(image: AssetImage( "assets/images/kdsshow.png",),fit: BoxFit.cover)
                      // gradient: LinearGradient(
                      //   colors: [Color(0xFF3683DB), Color(0xFF173361)],
                      //   begin: Alignment.topLeft,
                      //   end: Alignment.bottomRight,
                      // ),
                    ),
                    // child: Stack(
                    //   children: [
                    //     /// Right Image
                    //     Positioned(
                    //       left: 65,
                    //       bottom: 1,
                    //       child: ClipRRect(
                    //         borderRadius: BorderRadius.circular(14),
                    //         child: Image.network(
                    //           "https://th.bing.com/th/id/R.a88861a27cabb8e2c2301b7f94ac743f?rik=3%2byWHFV6858lsg&riu=http%3a%2f%2fwww.pngall.com%2fwp-content%2fuploads%2f2017%2f03%2fKids-Free-PNG-Image.png&ehk=mmYJJ281fFhO0FtH4PhE%2fDc0MFDNtosXINJWdz%2fQPKM%3d&risl=&pid=ImgRaw&r=0",
                    //           height: 130,
                    //           fit: BoxFit.fitHeight,
                    //         ),
                    //       ),
                    //     ),
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         Padding(
                    //           padding: const EdgeInsets.only(
                    //             top: 32.0,
                    //             left: 13,
                    //           ),
                    //           child: Text(
                    //             "KIDS",
                    //             style: TextStyle(
                    //               color: Colors.white,
                    //               fontSize: 18,
                    //               fontWeight: FontWeight.bold,
                    //             ),
                    //           ),
                    //         ),
                    //         //SizedBox(height: 8),
                    //         Padding(
                    //           padding: const EdgeInsets.only(
                    //             bottom: 4.0,
                    //             left: 13,
                    //           ),
                    //           child: Text(
                    //             "6 Events",
                    //             style: const TextStyle(
                    //               color: Colors.white70,
                    //               fontSize: 10,
                    //               fontWeight: FontWeight.bold,
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Watch Top Movies Online",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Text(
                "Buy or Rent movies on BMS STREAM",
                style: TextStyle(color: Colors.grey,fontSize: 12),
              ),
            ),

            SizedBox(height: 16),

            /// Carousel
            CarouselSlider.builder(
              itemCount: movies.length,
              options: CarouselOptions(
                autoPlay: true,
                height: 320,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() => currentIndex = index);
                },
              ),
              itemBuilder: (context, index, _) {
                //final movie = movies[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Poster
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Stack(
                              children: [
                                Image.network(
                                  movies[index].image,
                                  height: 250,
                                  width: 170,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  bottom: 1,
                                  left: 0,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: const Text(
                                      "PREMIERE",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(width: 12),

                          /// Details
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movies[index].title,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  movies[index].info,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(color: Colors.grey,fontSize: 11),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  movies[index].description,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      /// Buy or Rent Button
                      SizedBox(
                        height: 40,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 48),
                            side: const BorderSide(color: Colors.red),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            "Buy or Rent",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),

            SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 20,
                  child: ListView.builder(
                     physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: movies.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return 
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 6,
                          width: currentIndex == index ? 8 : 5,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentIndex == index
                                ? Colors.black
                                : Colors.grey.shade400,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "The Ultimate Events List",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1F1F1F),
                ),
              ),
            ),
            // SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Good times outdoor or at home",
                style: TextStyle(fontSize: 12, color: Color(0xFF6F6F6F)),
              ),
            ),
            SizedBox(height: 16),

            Container(
              height: 90,
              // color: Colors.green,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 16),
                children: [
                  Container(
                    width: 150,
                    clipBehavior: Clip.hardEdge,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        colors: [Color(0xFF7CA7A9), Color(0xFFBFD9DA)],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                    ),
                    child: Stack(
                      children: [
                        /// Right Image
                        Positioned(
                          right: -10,
                          bottom: -40,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://www.kindpng.com/picc/b/59-597262_fitness-woman-png.png",
                              height: 130,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 22.0,
                                left: 13,
                              ),
                              child: Text(
                                "WELLNESS\nEVENTS",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2,
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 4.0,
                                left: 13,
                              ),
                              child: Text(
                                "8 Events",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: 150,
                    clipBehavior: Clip.hardEdge,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        colors: [Color(0xFF8D6AAE), Color(0xFFC2A7D8)],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                    ),
                    child: Stack(
                      children: [
                        /// Right Image
                        Positioned(
                          right: -60,
                          bottom: -70,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://static.vecteezy.com/system/resources/previews/066/305/457/non_2x/group-of-people-smiling-free-png.png",
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 22.0,
                                left: 13,
                              ),
                              child: Text(
                                "COMEDY MUSIC\n& MORE",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2,
                                  letterSpacing: -1,
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 4.0,
                                left: 13,
                              ),
                              child: Text(
                                "15+ Events",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Must-Attend Live Events",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1F1F1F),
                    ),
                  ),
                  Text(
                    "See All ›",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFE53935),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              // color: Colors.green,
              height: 350,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemCount: MustAttendLive.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 140,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 230,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      MustAttendLive[index]['image']!,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                  MustAttendLive[index]['date']!,
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xFF6F6F6F),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                              SizedBox(height: 4),

                              /// Title
                              Text(
                                 MustAttendLive[index]['title']!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF1F1F1F),
                                ),
                              ),

                              const SizedBox(height: 2),

                              /// Venue
                              Text(
                                 MustAttendLive[index]['location']!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 10,
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

            const SizedBox(height: 12),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "The Laughter Therapy",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1F1F1F),
                ),
              ),
            ),
            SizedBox(height: 12),

            Container(
               // color: Colors.green,
              height: 340,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemCount: comedyList.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 230,
                                    width: 150,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          comedyList[index]['image']!,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 8,
                                    left: 8,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.8),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Text(
                                        "ONLINE",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                comedyList[index]['date']!,
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xFF6F6F6F),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                              SizedBox(height: 4),

                              /// Title
                              Text(
                                 comedyList[index]['title']!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF1F1F1F),
                                ),
                              ),

                              const SizedBox(height: 2),

                              /// Venue
                              Text(
                                comedyList[index]['subtitle']!,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 10,
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

            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Events",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1F1F1F),
                    ),
                  ),
                  Text(
                    "See All ›",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFE53935),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              //  color: Colors.green,
              height: 350,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemCount: popularevent.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 230,
                                    //width: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                         popularevent[index]['image']!,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 8,
                                    left: 8,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.8),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Text(
                                        "ONLINE",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                popularevent[index]['date']!,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF6F6F6F),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                              SizedBox(height: 4),

                              /// Title
                              Text(
                                 popularevent[index]['title']!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF1F1F1F),
                                ),
                              ),

                              const SizedBox(height: 2),

                              /// Venue
                              Text(
                                 popularevent[index]['type']!,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 10,
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

            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Games & Sports Events",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1F1F1F),
                    ),
                  ),
                  Text(
                    "See All ›",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFE53935),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              // color: Colors.green,
              height: 330,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemCount: topSport.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 230,
                                   // width: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                         topSport[index]['image']!
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                               
                                ],
                              ),SizedBox(height: 4,),
                              Text(
                                 topSport[index]['date']!,
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xFF6F6F6F),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                             // SizedBox(height: 4),

                              /// Title
                              Text(
                                  topSport[index]['title']!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF1F1F1F),
                                ),
                              ),

                              //const SizedBox(height: 2),

                              /// Venue
                              Text(
                                 topSport[index]['type']!,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 10,
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
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Music Studio",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1F1F1F),
                    ),
                  ),
                  Text(
                    "See All ›",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFE53935),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              //  color: Colors.green,
              height: 360,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemCount: musishow.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 230,
                                //width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      musishow[index]['image']!,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                musishow[index]['date']!,
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xFF6F6F6F),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                             // SizedBox(height: 4),

                              /// Title
                              Text(
                                musishow[index]['title']!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF1F1F1F),
                                ),
                              ),

                              const SizedBox(height: 2),

                              /// Venue
                              Text(
                               musishow[index]['location']!,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF8A8A8A),
                                ),
                              ),
                              const SizedBox(height: 2),

                              /// Category
                              Text(
                                musishow[index]['type']!,
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
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.layers_outlined,
                  size: 18,
                  color: Color(0xFFE53935), // BookMyShow red
                ),
                 SizedBox(width: 8),
                 Text(
                  "Explore All Categories",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFE53935),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Divider(thickness: 1,indent: 20,endIndent: 20,),

             SizedBox(height: 10),

            Opacity(
              opacity: 0.20,
              child: Center(
                child: Image.network(
                  "https://latestlogo.com/wp-content/uploads/2024/03/bookmyshow.png",
                //  color: const Color(0xE79E9E9E),
                  height: 40,
                ),
              ),
            ),

             SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
