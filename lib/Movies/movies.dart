import 'package:book_my_show/Home/browseByCinema.dart';
import 'package:book_my_show/Movies/filter.dart';
import 'package:book_my_show/model.dart';
import 'package:book_my_show/movie_detail.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  List<String> Moviebanners = [
    "assets/images/mbaner3.png",
    "assets/images/mbaner2.png",
    "assets/images/mbaner1.png"
    
  ];
  int currentIndex = 0;

  List<String> itms = ["Malayalam", "English", "Hindi","Tamil"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: SizedBox(
              height: 44,
              child: FloatingActionButton.extended(
                heroTag: "cinema",
                backgroundColor: const Color(0xFFFA6464),
                elevation: 6,
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Browsebycinema(),));
                },
                icon: const Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                  size: 18,
                ),
                label: const Text(
                  "Browse by Cinemas",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                  extendedPadding:
        const EdgeInsets.symmetric(horizontal: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
          ),

          FloatingActionButton(
            shape: CircleBorder(),
            heroTag: "filter",
            backgroundColor: const Color(0xFFE31837),
            elevation: 6,
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Filterscreen(),));
            },
            mini: true,
            child: const Icon(Icons.filter_alt_outlined, color: Colors.white),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Now Showing",
              style: TextStyle(color: Colors.black, fontSize: 19,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 1,),
            Text(
              "Kanhangad | 6 Movies",
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
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      CarouselSlider.builder(
                        itemCount: Moviebanners.length,
                        itemBuilder: (context, index, realIndex) {
                          return Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.asset(Moviebanners[index], fit: BoxFit.cover),
              
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
                            ],
                          );
                        },
                        options: CarouselOptions(
                          height: double.infinity,
                          viewportFraction: 1.0,
                          autoPlay: true,
                          enlargeCenterPage: false,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
              
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
                                itemCount: Moviebanners.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      height: 4,
                                      width: currentIndex == index ? 6 : 4,
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
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 65,
                child: ListView.builder(
                  itemCount: itms.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 20,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      alignment: Alignment.center,
                      height: 20,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        itms[index],
                        style: TextStyle(color: Colors.red),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFFF95A5A),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Coming Soon",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Explore Upcoming Movies",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: Recomendedmovies.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 14,
                  crossAxisSpacing: 14,
                  childAspectRatio: 0.58,
                ),
                itemBuilder: (_, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child:  InkWell(
                          onTap: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context) => MovieDetail(
                                  movie: DetailMovies[index]
                                ),
                              )
                            );
                          },
                          child: Container(
                            height: 250,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                  Recomendedmovies[index]["image"],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 1),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            const Icon(Icons.star, color: Colors.red, size: 16),
                            const SizedBox(width: 4),
                            Text(
                              Recomendedmovies[index]["rating"],
                              style: const TextStyle(fontWeight: FontWeight.w400),
                            ),
                           Spacer(),
                            Text(
                              "${Recomendedmovies[index]["votes"]}  Votes",
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        Recomendedmovies[index]["title"],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
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