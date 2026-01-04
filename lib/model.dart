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