class Movie {
  final String image;
  final String title;
  final String rating;
  final String votes;
  

  Movie({
    required this.image,
    required this.title,
    required this.rating,
    required this.votes,
  });
}


 List<Map<String, dynamic>> Recomendedmovies = [
    {
      "image":
          "https://th.bing.com/th?id=OIF.6f%2bykKGFhK7KmA8g331U%2fg&rs=1&pid=ImgDetMain&o=7&rm=3",
      "title": "Avatar: Fire and Ash",
      "rating": "8",
      "votes": "100K+",
    },
    {
      "image":
          "https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/kalamkaval-et00468439-1761645584.jpg",
      "title": "Kalamkaval",
      "rating": "8.6",
      "votes": "60.4K+",
    },
    {
      "image":
          "https://cdn.trackmyshow.in/movie_data/sarvam-maya/sarvam-maya_portrait.jpg",
      "title": "Sarvam Maya",
      "rating": "9.2",
      "votes": "56.1K+",
    },
    {
      "image":
          "https://m.media-amazon.com/images/M/MV5BYjdkNWI3MmQtZDRmZC00NWYwLThmYjQtODE2YjQwNzA0Yjg0XkEyXkFqcGc@._V1_.jpg",
      "title": "Bha Bha Ba",
      "rating": "7",
      "votes": "39.7K+",
    },
    {
      "image":
          "https://cdn.moviefone.com/image-assets/1273274/xmDQj0clWvkPiuvsl9LEwkrFjIA.jpg?d=360x540&q=60",
      "title": "Haal(Malayalam)",
      "rating": "8.9",
      "votes": "1.1K+",
    },
    {
      "image":
          "http://www.impawards.com/intl/india/2025/posters/dhurandhar.jpg",
      "title": "Dhurandhar",
      "rating": "9.3",
      "votes": "454K+",
    },
  ];







  class TopMovie {
  final String image;
  final String title;
  final String info;
  final String description;

  TopMovie({
    required this.image,
    required this.title,
    required this.info,
    required this.description,
  });
}

final List<TopMovie> movies = [
    TopMovie(
      image:
          "https://assets-in.bmscdn.com/iedb/movies/images/extra/vertical_logo/mobile/thumbnail/xxlarge/sisu-road-to-revenge-et00448820-1766416553.jpg",
      title: "Sisu: Road to Revenge",
      info: "1h 31m • Action, War • A • English",
      description:
          "Follows an ex-soldier who finds gold in the Lapland wilderness...",
    ),
    TopMovie(
      image:
          "https://tse4.mm.bing.net/th/id/OIP.DSxaEsag2WTpL-u3ekr1jgHaLH?rs=1&pid=ImgDetMain&o=7&rm=3",
      title: "Action Hero",
      info: "2h 10m • Action • UA • English",
      description: "A gripping action thriller with intense sequences...",
    ),
  ];







class Detail {
  final String image;
  final String title;
  final String rating;
  final String votes;
  final String duration;
  final String type;
  final String date;
  


  Detail({
    required this.image,
    required this.title,
    required this.rating,
    required this.votes,
     required this.duration,
      required this.type,
       required this.date,
  });
}


  
 List<Map<String, dynamic>> DetailMovies = [
    {
      "image":
          "https://disney.images.edge.bamgrid.com/ripcut-delivery/v2/variant/disney/aa88957c-3b5f-4369-90ac-b781496a70f3/compose?aspectRatio=1.78&format=webp&width=1200",
      "title": "Avatar: Fire and Ash",
      "rating": "8",
      "votes": "100K+",
      "duration":"3h 17m",
      "type":"Action, Adventure, Fantasy, Sci-Fi ",
      "date":" 19 Dec, 2025",
    },
    {
      "image":
          "https://i.ytimg.com/vi/RBflOx6sEYs/maxresdefault.jpg",
      "title": "Kalamkaval",
      "rating": "8.6",
      "votes": "60.4K+",
       "duration":"2h 19m",
      "type":"Action, Crime, Mystery, Thriller ",
      "date":" 5 Dec, 2025",
    },
    {
      "image":
          "https://img.nowrunning.com/content/movie/2025/sarva-31076/bg2_sarvam-maya.jpg",
      "title": "Sarvam Maya",
      "rating": "9.2",
      "votes": "56.1K+",
       "duration":"2h 27m",
      "type":"Comedy, Drama, Fantacy, U ",
      "date":" 25 Dec, 2025",
      
    },
    {
      "image":
          "https://tse4.mm.bing.net/th/id/OIP.NWkw4WjrwsogTBtu2JakBQHaEK?rs=1&pid=ImgDetMain&o=7&rm=3",
      "title": "Bha Bha Ba",
      "rating": "7",
      "votes": "39.7K+",
        "duration":"2h 32m",
      "type":"Action, Comedy, Thriller, ",
      "date":" 18 Dec, 2025",
    },
    {
      "image":
          "https://img.mathrubhumi.com/view/acePublic/alias/contentid/1l1vd1y87fkxtqfn4oe/1/haal-movie-jpg.webp?f=3:2&q=0.75&w=900",
      "title": "Haal(Malayalam)",
      "rating": "8.9",
      "votes": "1.1K+",
       "duration":"2h 32m",
      "type":"Romanty, Comedy, Thriller, ",
      "date":" 18 Dec, 2025",
    },
    {
      "image":
          "http://www.impawards.com/intl/india/2025/posters/dhurandhar.jpg",
      "title": "Dhurandhar",
      "rating": "9.3",
      "votes": "454K+",
       "duration":"3h 30m",
      "type":"Action, Thriller, ",
      "date":" 5 Dec, 2025",
    },
  ];


  class Cast{
     final String castimage;
  final String castname;
  final String castcharacter;

  Cast({
    required this.castimage,
    required this.castname,
    required this.castcharacter
  });
  }

 List<Cast> castmovies=[
  Cast(castimage: "https://deadline.com/wp-content/uploads/2023/05/Collage-Maker-30-May-2023-10-24-AM-4404.jpg", castname: "fddd", castcharacter: "castcharacter"),
  Cast(castimage: "", castname: "castname", castcharacter: "castcharacter"),
  Cast(castimage: "", castname: "castname", castcharacter: "castcharacter")
 ];