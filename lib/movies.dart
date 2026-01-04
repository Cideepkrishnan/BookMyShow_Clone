import 'package:book_my_show/model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  List<String> banners = [
    "https://static.vecteezy.com/system/resources/previews/003/599/325/large_2x/online-shopping-on-phone-buy-sell-business-digital-web-banner-application-money-advertising-payment-ecommerce-illustration-search-vector.jpg",
    "https://static.vecteezy.com/system/resources/previews/001/937/403/original/paper-art-shopping-online-on-smartphone-sale-promotion-backgroud-banner-for-market-ecommerce-free-vector.jpg",
    "https://static.vecteezy.com/system/resources/previews/001/750/452/large_2x/online-shopping-and-e-commerce-banner-vector.jpg",
    //"https://static.vecteezy.com/system/resources/previews/000/621/356/original/vector-online-shop-or-ecommerce-landing-page-template.jpg"
  ];
  int currentIndex = 0;

  List<String> itms = ["Malayalam", "English", "Hindi"];

  // List<Map<String, dynamic>> movies = [
  //   {
  //     "image":
  //         "https://th.bing.com/th?id=OIF.6f%2bykKGFhK7KmA8g331U%2fg&rs=1&pid=ImgDetMain&o=7&rm=3",
  //     "title": "Avatar: Fire and Ash",
  //     "rating": "8",
  //     "votes": "100K+",
  //   },
  //   {
  //     "image":
  //         "https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/kalamkaval-et00468439-1761645584.jpg",
  //     "title": "Kalamkaval",
  //     "rating": "8.6",
  //     "votes": "60.4K+",
  //   },
  //   {
  //     "image":
  //         "https://cdn.trackmyshow.in/movie_data/sarvam-maya/sarvam-maya_portrait.jpg",
  //     "title": "Sarvam Maya",
  //     "rating": "9.2",
  //     "votes": "56.1K+",
  //   },
  //   {
  //     "image":
  //         "https://m.media-amazon.com/images/M/MV5BYjdkNWI3MmQtZDRmZC00NWYwLThmYjQtODE2YjQwNzA0Yjg0XkEyXkFqcGc@._V1_.jpg",
  //     "title": "Bha Bha Ba",
  //     "rating": "7",
  //     "votes": "39.7K+",
  //   },
  //   {
  //     "image":
  //         "https://cdn.moviefone.com/image-assets/1273274/xmDQj0clWvkPiuvsl9LEwkrFjIA.jpg?d=360x540&q=60",
  //     "title": "Haal(Malayalam)",
  //     "rating": "8.9",
  //     "votes": "1.1K+",
  //   },
  //   {
  //     "image":
  //         "http://www.impawards.com/intl/india/2025/posters/dhurandhar.jpg",
  //     "title": "Dhurandhar",
  //     "rating": "9.3",
  //     "votes": "454K+",
  //   },
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: SizedBox(
              height: 44, // adjust height
              child: FloatingActionButton.extended(
                heroTag: "cinema",
                backgroundColor: const Color(0xFFE31837),
                elevation: 6,
                onPressed: () {},
                icon: const Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                  size: 18,
                ),
                label: const Text(
                  "Browse by Cinemas",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                  extendedPadding:
        const EdgeInsets.symmetric(horizontal: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22), // 👈 circular border
                ),
              ),
            ),
          ),

          FloatingActionButton(
            shape: CircleBorder(),
            heroTag: "filter",
            backgroundColor: const Color(0xFFE31837),
            elevation: 6,
            onPressed: () {},
            mini: true,
            child: const Icon(Icons.filter_alt_outlined, color: Colors.white),
          ),
        ],
      ),
      // backgroundColor: Colors.green,
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Now Showing",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            Text(
              "Kanhangad | 6 Movies",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 180,
                //margin: EdgeInsets.symmetric(horizontal: 10),
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
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                //  color: Colors.amber,
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
            // SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFFE31837),
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
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Explore Upcoming Movies",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
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
                  // movie = banners[index];
                  return
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child:  Container(
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
                      const SizedBox(height: 1),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            const Icon(Icons.star, color: Colors.red, size: 16),
                            const SizedBox(width: 4),
                            Text(
                              Recomendedmovies[index]["rating"],
                              style: const TextStyle(fontWeight: FontWeight.bold),
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
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
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



// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// class Movies extends StatefulWidget {
//   const Movies({super.key});
//   @override
//   State<Movies> createState() => _MoviesState();
// }
// class _MoviesState extends State<Movies> {
//   List<String> banners = [
//     "https://static.vecteezy.com/system/resources/previews/003/599/325/large_2x/online-shopping-on-phone-buy-sell-business-digital-web-banner-application-money-advertising-payment-ecommerce-illustration-search-vector.jpg",
//     "https://static.vecteezy.com/system/resources/previews/001/937/403/original/paper-art-shopping-online-on-smartphone-sale-promotion-backgroud-banner-for-market-ecommerce-free-vector.jpg",
//     "https://static.vecteezy.com/system/resources/previews/001/750/452/large_2x/online-shopping-and-e-commerce-banner-vector.jpg",
//     //"https://static.vecteezy.com/system/resources/previews/000/621/356/original/vector-online-shop-or-ecommerce-landing-page-template.jpg"
//   ];
//   int currentIndex = 0;
//   List<String> itms = ["Malayalam", "English", "Hindi"];
//   List<Map<String, dynamic>> movies = [
//     {
//       "image":
//           "https://th.bing.com/th?id=OIF.6f%2bykKGFhK7KmA8g331U%2fg&rs=1&pid=ImgDetMain&o=7&rm=3",
//       "title": "Avatar: Fire and Ash",
//       "rating": "8",
//       "votes": "100K+",
//     },
//     {
//       "image":
//           "https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/kalamkaval-et00468439-1761645584.jpg",
//       "title": "Kalamkaval",
//       "rating": "8.6",
//       "votes": "60.4K+",
//     },
//     {
//       "image":
//           "https://cdn.trackmyshow.in/movie_data/sarvam-maya/sarvam-maya_portrait.jpg",
//       "title": "Sarvam Maya",
//       "rating": "9.2",
//       "votes": "56.1K+",
//     },
//     {
//       "image":
//           "https://m.media-amazon.com/images/M/MV5BYjdkNWI3MmQtZDRmZC00NWYwLThmYjQtODE2YjQwNzA0Yjg0XkEyXkFqcGc@._V1_.jpg",
//       "title": "Bha Bha Ba",
//       "rating": "7",
//       "votes": "39.7K+",
//     },
//     {
//       "image":
//           "https://cdn.moviefone.com/image-assets/1273274/xmDQj0clWvkPiuvsl9LEwkrFjIA.jpg?d=360x540&q=60",
//       "title": "Haal(Malayalam)",
//       "rating": "8.9",
//       "votes": "1.1K+",
//     },
//     {
//       "image":
//           "http://www.impawards.com/intl/india/2025/posters/dhurandhar.jpg",
//       "title": "Dhurandhar",
//       "rating": "9.3",
//       "votes": "454K+",
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 25.0),
//             child: SizedBox(
//               height: 44, // adjust height
//               child: FloatingActionButton.extended(
//                 heroTag: "cinema",
//                 backgroundColor: const Color(0xFFE31837),
//                 elevation: 6,
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.location_on_outlined,
//                   color: Colors.white,
//                   size: 18,
//                 ),
//                 label: const Text(
//                   "Browse by Cinemas",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w600,
//                     fontSize: 14,
//                   ),
//                 ),
//                   extendedPadding:
//         const EdgeInsets.symmetric(horizontal: 16),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(22), // 👈 circular border
//                 ),
//               ),
//             ),
//           ),
//           FloatingActionButton(
//             shape: CircleBorder(),
//             heroTag: "filter",
//             backgroundColor: const Color(0xFFE31837),
//             elevation: 6,
//             onPressed: () {},
//             mini: true,
//             child: const Icon(Icons.filter_alt_outlined, color: Colors.white),
//           ),
//         ],
//       ),
//       // backgroundColor: Colors.green,
//       appBar: AppBar(
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: const [
//             Text(
//               "Now Showing",
//               style: TextStyle(color: Colors.black, fontSize: 18),
//             ),
//             Text(
//               "Kanhangad | 6 Movies",
//               style: TextStyle(color: Colors.grey, fontSize: 12),
//             ),
//           ],
//         ),
//         actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
//       ),
//       body: CustomScrollView(
//         slivers: [
//           SliverToBoxAdapter(
//             child: Container(
//               height: 180,
//               margin: EdgeInsets.symmetric(horizontal: 12),
//               decoration: BoxDecoration(
//                 // color: Colors.black,
//                 borderRadius: BorderRadius.circular(22),
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(22),
//                 child: Stack(
//                   children: [
//                     // Carousel moves INSIDE this container
//                     CarouselSlider.builder(
//                       itemCount: banners.length,
//                       itemBuilder: (context, index, realIndex) {
//                         return Stack(
//                           fit: StackFit.expand,
//                           children: [
//                             Image.network(banners[index], fit: BoxFit.cover),                  
//                             // Gradient overlay
//                             Container(
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: Alignment.bottomCenter,
//                                   end: Alignment.topCenter,
//                                   colors: [
//                                     const Color(0x8A000000),
//                                     Colors.transparent,
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         );
//                       },
//                       options: CarouselOptions(
//                         height: double.infinity,
//                         viewportFraction: 1.0, // VERY IMPORTANT
//                         autoPlay: true,
//                         enlargeCenterPage: false,
//                         onPageChanged: (index, reason) {
//                           setState(() {
//                             currentIndex = index;
//                           });
//                         },
//                       ),
//                     ),                   
//                     // Dots indicator INSIDE same container
//                     Positioned(
//                       bottom: -5,
//                       left: 0,
//                       right: 0,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             height: 40,
//                             child: ListView.builder(
//                               shrinkWrap: true,
//                               itemCount: banners.length,
//                               scrollDirection: Axis.horizontal,
//                               itemBuilder: (BuildContext context, int index) {
//                                 return Padding(
//                                   padding: const EdgeInsets.all(4.0),
//                                   child: Container(
//                                     height: 6,
//                                     width: currentIndex == index ? 8 : 6,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       color: currentIndex == index
//                                           ? Colors.white
//                                           : Colors.grey,
//                                     ),
//                                   ),
//                                 );
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           SliverToBoxAdapter(child: SizedBox(height: 5)),
//           SliverPersistentHeader(
//             pinned: true,
//             delegate: _StickyHeaderDelegate( 
//               height: 70,
//             child:_languageList(),
//             //  Padding(
//             //   padding: const EdgeInsets.all(8.0),
//             //   child: Container(
//             //     height: 80,
//             //     //  color: Colors.amber,
//             //     child: ListView.builder(
//             //       itemCount: itms.length,
//             //       scrollDirection: Axis.horizontal,
//             //       itemBuilder: (context, index) {
//             //         return Container(
//             //           margin: const EdgeInsets.symmetric(
//             //             horizontal: 8,
//             //             vertical: 20,
//             //           ),
//             //           padding: const EdgeInsets.symmetric(horizontal: 14),
//             //           alignment: Alignment.center,
//             //           height: 20,
//             //           decoration: BoxDecoration(
//             //             border: Border.all(color: Colors.black),
//             //             borderRadius: BorderRadius.circular(20),
//             //           ),
//             //           child: Text(
//             //             itms[index],
//             //             style: TextStyle(color: Colors.red),
//             //           ),
//             //         );
//             //       },
//             //     ),
//             //   ),
//             // ),
//           ),),
//           // SizedBox(height: 5),
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 55,
//                 decoration: BoxDecoration(
//                   color: const Color(0xFFE31837),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: const Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text(
//                         "Coming Soon",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 17,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text(
//                         "Explore Upcoming Movies",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 15,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       Icon(Icons.arrow_forward_ios, color: Colors.white),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           //SizedBox(height: 10),
//            SliverPadding(
//       padding: const EdgeInsets.symmetric(horizontal: 12),
//       sliver: SliverGrid(
//         delegate: SliverChildBuilderDelegate(
//           (context, index) {
//             final movie = movies[index];
//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Image.network(
//                       movie["image"],
//                       fit: BoxFit.cover,
//                       width: double.infinity,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 6),
//                 Row(
//                   children: [
//                     const Icon(Icons.star,
//                         color: Colors.red, size: 16),
//                     const SizedBox(width: 4),
//                     Text(movie["rating"]),
//                     const Spacer(),
//                     Text(
//                       "${movie["votes"]} Votes",
//                       style: const TextStyle(
//                         color: Colors.grey,
//                         fontSize: 12,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   movie["title"],
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             );
//           },
//           childCount: movies.length,
//         ),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisSpacing: 14,
//           crossAxisSpacing: 14,
//           childAspectRatio: 0.58,
//         ),
//       ),
//     ),
//         ],
//       ),
//     );
//   }
//   Widget _languageList() => Container(
//   height: 70,
//   padding: const EdgeInsets.symmetric(horizontal: 8),
//   child: ListView.builder(
//     scrollDirection: Axis.horizontal,
//     itemCount: itms.length,
//     itemBuilder: (context, index) {
//       return Container(
//         margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
//         padding: const EdgeInsets.symmetric(horizontal: 14),
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.black),
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Text(
//           itms[index],
//           style: const TextStyle(color: Colors.red),
//         ),
//       );
//     },
//   ),
// );
// }
// class _StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
//   final Widget child;
//   final double height;
//   _StickyHeaderDelegate({
//     required this.child,
//     required this.height,
//   });
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return Container(
//       color: Colors.white, // important for clean stick
//       child: child,
//     );
//   }
//   @override
//   double get maxExtent => height;
//   @override
//   double get minExtent => height;
//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
//       false;
// }



