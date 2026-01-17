import 'package:book_my_show/Home/hsbc.dart';
import 'package:book_my_show/Home/kidszone.dart';
import 'package:book_my_show/Home/menst20.dart';
import 'package:book_my_show/Home/musicshow.dart';
import 'package:book_my_show/Home/seeall.dart';
import 'package:book_my_show/Home/sports.dart';
import 'package:book_my_show/Movies/movies.dart';

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
          "https://tse1.explicit.bing.net/th/id/OIP.cAmhGhJVcly_YSPeUx0Q7gHaK-?rs=1&pid=ImgDetMain&o=7&rm=3",
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
    // {
    //   "image":
    //       "https://cdn.moviefone.com/image-assets/1273274/xmDQj0clWvkPiuvsl9LEwkrFjIA.jpg?d=360x540&q=60",
    //   "title": "Haal(Malayalam)",
    //   "rating": "8.9",
    //   "votes": "1.1K+",
    // },
    {
      "image":
          "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhL5Wh1VyoX7YsblPAhUln1TsvRlme7CxRBw4R4BxrpqEXvJpWO8J8FLU_pfWYm7FZwWymzm7RbHkbXefhNbvKdGgvWimaoMA-UGr_NRHaSszEsse_kqmBoFtn_Q1XaDNQfikFQpMxJ1TGphWNHw7t2qZvv27l2eBM9JnoiaXcu-ACHTMROQHc7MTu4PxwA/s16000/images%20(64).jpeg",
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
      TopMovie(
      image:
          "https://th.bing.com/th/id/R.d0239421a5d4116ff097239b0310a450?rik=LqvnL0lFsRrPxQ&riu=http%3a%2f%2fftp.impawards.com%2f2025%2fposters%2frunning_man_ver3.jpg&ehk=Q%2bDOah3VLL6izoW9jD7RqgNQ4TD3VKYXAjXrY72goh8%3d&risl=&pid=ImgRaw&r=0",
      title: "The Running Man",
      info: "2h 14m • Action • UA • Sci_Fi,Thriller • A",
      description: "Millions Hunt,One Runs.Everyone Watches.In a near-future society,",
    ),
      TopMovie(
      image:
          "https://th.bing.com/th/id/R.5a1eb322141a49557a0b80e835fec1cc?rik=GFZC0X5G38lZ2g&riu=http%3a%2f%2fwww.impawards.com%2f2025%2fposters%2fnuremberg_ver5.jpg&ehk=5F%2bNqAreWs%2bKvGn4YXs030TczjDGr9XH157xmdhsQqI%3d&risl=&pid=ImgRaw&r=0",
      title: "Nuremberg",
      info: "2h 30m • Drama,Historical • UA16+ • English",
      description: "A young American soldier and a German psychologist must race against time to..",
    ),
      TopMovie(
      image:
          "https://media2.firstshowing.net/firstshowing/img16/TheConjuringLastritesposter5991.jpg",
      title: "The Conjuring:Last Rites",
      info: "2h 15m • Horrer,Thriller • UA • English,Hindi,Tamil,Telengu",
      description: "Ed and Lorraine Warren face their most haunting and dangerous case yet.",
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
   final List<Cast> cast;
  final List<Crew> crew;
  


  Detail({
    required this.image,
    required this.title,
    required this.rating,
    required this.votes,
     required this.duration,
      required this.type,
       required this.date,
       required this.cast,
    required this.crew,
  });
}
class Cast {
  final String castname;
  final String castcharacter;
  final String castimage;

  Cast({
    required this.castname,
    required this.castcharacter,
    required this.castimage,
  });
}

class Crew {
  final String name;
  final String role;
  final String image;

  Crew({
    required this.name,
    required this.role,
    required this.image,
  });
}
  
 List<Map<String, dynamic>> DetailMovies = [
    {

       "image2":
          "https://tse1.explicit.bing.net/th/id/OIP.cAmhGhJVcly_YSPeUx0Q7gHaK-?rs=1&pid=ImgDetMain&o=7&rm=3",
      "image":
          "https://disney.images.edge.bamgrid.com/ripcut-delivery/v2/variant/disney/aa88957c-3b5f-4369-90ac-b781496a70f3/compose?aspectRatio=1.78&format=webp&width=1200",
      "title": "Avatar: Fire and Ash",
      "rating": "8",
      "votes": "100K+",
      "duration":"3h 17m",
      "type":"Action, Adventure, Fantasy, Sci-Fi ",
      "date":" 19 Dec, 2025",
      "cast":[
        {
          "castname":"Sam Worthington",
          "castcharacter":"jake Sully",
          "castimage":"https://wallpapers.com/images/hd/sam-worthington-formal-black-suit-photography-urbzizlhfuvf7a3d.jpg"
        },
        {
          "castname":"Zoe Saldana",
          "castcharacter":"Neytiri",
          "castimage":"https://preview.redd.it/zoe-saldana-v0-qqk6dmkkn43c1.jpeg?auto=webp&s=3f5e5e479623495b0c85ae20320133c1887288a7"
        },
        {
          "castname":"Sigourney Weaver",
          "castcharacter":"Kiri",
          "castimage":"https://tse3.mm.bing.net/th/id/OIP.H_vL0GwHkV7906u2tiEySgAAAA?rs=1&pid=ImgDetMain&o=7&rm=3"
        },
        {
          "castname":"Stephen lang",
          "castcharacter":"Colonel Miles Quaritch",
          "castimage":"https://tse4.mm.bing.net/th/id/OIP.7yCb_xp96dbHgqjQF_Q5XgHaLH?rs=1&pid=ImgDetMain&o=7&rm=3"
        },
        {
          "castname":"Kate Winslet",
          "castcharacter":"Ronal ",
          "castimage":"https://image.freizeit.at/images/cfs_square_1232/7600544/46-192655456.jpg"
        },
      ],
      "crew":[
        {"name":"James Cameron",
        "role":"Director,Producer,Writer,ScreenPlay",
        "image":"https://people.com/thmb/SXnExkFnWJ9iM_4AEEP1X3lMqQE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(686x343:688x345)/JamesCameron-071523-02-3b6468ee0c524c3b901648fc2ed3ba58.jpg"
        },
        
         {"name":"Amanda Silver",
        "role":"Writer, ScreenPlay",
        "image":"https://flxt.tmsimg.com/assets/479875_v9_ba.jpg"
        },

         {"name":"Rick Jaffa",
        "role":"Writer,ScreenPlay",
        "image":"https://images.mubicdn.net/images/cast_member/41608/cache-253544-1504813318/image-w856.jpg?size=800x"
        },

         {"name":"Shane Salerno",
        "role":"Writer",
        "image":"https://m.media-amazon.com/images/M/MV5BMjYxMjE3Mzk1Ml5BMl5BanBnXkFyZXN1bWU@._V1_FMjpg_UX1000_.jpg"
        },

         {"name":"Josh Friedman",
        "role":"Writer",
        "image":"https://media.gettyimages.com/id/121593756/photo/josh-friedman-attends-the-apple-comics-terminator-the-sarah-connor-chronicles-in-store-signing.jpg?s=612x612&w=gi&k=20&c=uwiJXLJ9zM-Qsjk9hUAKsl0ytpulebYMHxX6w1vtQNg="
        }
      ]
    },


    {

       "image2":
          "https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/kalamkaval-et00468439-1761645584.jpg",
      "image":
          "https://i.ytimg.com/vi/RBflOx6sEYs/maxresdefault.jpg",
      "title": "Kalamkaval",
      "rating": "8.6",
      "votes": "60.4K+",
       "duration":"2h 19m",
      "type":"Action, Crime, Mystery, Thriller ",
      "date":" 5 Dec, 2025",
      "cast":[
        {
          "castname":"Mammooty",
          "castcharacter":"Actor",
          "castimage":"https://image.tmdb.org/t/p/w500/c5ewp9XtDIOwK5QWhwA7TD0GzqO.jpg"
        },
        {
          "castname":"Vinayakan",
          "castcharacter":"Actor",
          "castimage":"https://tse1.mm.bing.net/th/id/OIP.rW0Kv36fL9xchgzaeRau-QHaHa?rs=1&pid=ImgDetMain&o=7&rm=3"
        },
        {
          "castname":"Rejisha Vijayan",
          "castcharacter":"Actor",
          "castimage":"https://tse1.mm.bing.net/th/id/OIP.v9fHFbJk-39iV9YqCplCcQHaLH?rs=1&pid=ImgDetMain&o=7&rm=3"
        },
        {
          "castname":"Malavika Menon",
          "castcharacter":"Actor",
          "castimage":"https://www.gethucinema.com/wp-content/uploads/2025/02/Malavika-Menon-9-KpLbFX1914.jpg"
        },
        {
          "castname":"Jibin Gopinath",
          "castcharacter":"Actor ",
          "castimage":"https://d2lnbwhcsmj8tp.cloudfront.net/thumbnails/202511103570950.jpeg"
        },
      ],
      "crew":[
        {"name":"Jithin K Jose",
        "role":"Director,Writer,ScreenPlay",
        "image":"https://tse1.explicit.bing.net/th/id/OIP.FZjmNG1wt_N7O5wmpq22zwAAAA?rs=1&pid=ImgDetMain&o=7&rm=3"
        },
        
         {"name":"Mammooty",
        "role":"Producer",
        "image":"https://image.tmdb.org/t/p/w500/c5ewp9XtDIOwK5QWhwA7TD0GzqO.jpg"
        },

         {"name":"Mujeeb Majeed",
        "role":"Musician,Background Score",
        "image":"https://nettv4u.com/serialimages/07-06-2022/mujeeb-majeed.png"
        },

         {"name":"George Sebastian",
        "role":"Executive Producer",
        "image":"https://nettv4u.com/imagine/08-05-2023/george-sebastian.jpg"
        },

         {"name":"Faisal Ali",
        "role":"Cinematography",
        "image":"https://nettv4u.com/serialimages/06-08-2022/faisal-ali.png"
        }
      ]
    },


    {

       "image2":
          "https://cdn.trackmyshow.in/movie_data/sarvam-maya/sarvam-maya_portrait.jpg",
      "image":
          "https://img.nowrunning.com/content/movie/2025/sarva-31076/bg2_sarvam-maya.jpg",
      "title": "Sarvam Maya",
      "rating": "9.2",
      "votes": "56.1K+",
       "duration":"2h 27m",
      "type":"Comedy, Drama, Fantacy, U ",
      "date":" 25 Dec, 2025",
       "cast":[
        {
          "castname":"Nivin Pauly",
          "castcharacter":"Actor",
          "castimage":"https://images.ottplay.com/images/nivin-pauly-1200-92.jpeg"
        },
        {
          "castname":"Aju Varghese",
          "castcharacter":"Actor",
          "castimage":"https://img.nowrunning.com/content/Artist/AjuVarghese/thumb/aju_varghese.jpg"
        },
        {
          "castname":"Janardhanan",
          "castcharacter":"Actor",
          "castimage":"https://alchetron.com/cdn/janardhanan-actor-0e87b077-d622-449a-a041-40712c5a8d1-resize-750.jpg"
        },
        {
          "castname":"Preity Mukhundhan",
          "castcharacter":"Actor",
          "castimage":"https://image.tmdb.org/t/p/original/m3qGm6zD2MIye4PB0OaeaS6wc9v.jpg"
        },
      ],
      "crew":[
        {"name":"Akhil Sathyan",
        "role":"Director,Writer,ScreenPlay",
        "image":"https://media.assettype.com/tnm/import/sites/default/files/akhil_sathyan_050523_1200_1.jpg?w=1200&ar=40:21&auto=format%2Ccompress&ogImage=true&mode=crop&enlarge=true&overlay=false&overlay_position=bottom&overlay_width=100"
        },
        
         {"name":"Ajayya Kumar",
        "role":"Producer",
        "image":"https://www.excelebiz.in/wp-content/uploads/2023/05/Ajayya-Kumar-Wiki.jpg"
        },

         {"name":"Rajeev Menon",
        "role":"Producer",
        "image":"https://www.infoflick.com/profile_photo/rajiv-menon_1712058642.jpg"
        },

         {"name":"Sharan Velayudhan",
        "role":"Cinematography",
        "image":"https://nettv4u.com/imagine/07-08-2022/sharan-velayudhan.jpg"
        },

         {"name":"Rathin Radhakrishnan",
        "role":"Editor",
        "image":"https://nettv4u.com/imagine/13-02-2022/rathin-radhakrishnan.jpg"
        }
      ]
      
    },

    {

      "image2":
          "https://m.media-amazon.com/images/M/MV5BYjdkNWI3MmQtZDRmZC00NWYwLThmYjQtODE2YjQwNzA0Yjg0XkEyXkFqcGc@._V1_.jpg",
      "image":
          "https://tse4.mm.bing.net/th/id/OIP.NWkw4WjrwsogTBtu2JakBQHaEK?rs=1&pid=ImgDetMain&o=7&rm=3",
      "title": "Bha Bha Ba",
      "rating": "7",
      "votes": "39.7K+",
        "duration":"2h 32m",
      "type":"Action, Comedy, Thriller, ",
      "date":" 18 Dec, 2025",
       "cast":[
        {
          "castname":"Dileep",
          "castcharacter":"Actor",
          "castimage":"https://tse3.mm.bing.net/th/id/OIP.EGekoOAwN_BN7GoATgrA5QHaG1?rs=1&pid=ImgDetMain&o=7&rm=3"
        },
        {
          "castname":"Mohanlal",
          "castcharacter":"Ghilli Bala",
          "castimage":"https://th.bing.com/th/id/OIF.kAOm61upgnDPEEA76SPtgA?o=7rm=3&rs=1&pid=ImgDetMain&o=7&rm=3"
        },
        {
          "castname":"Vineeth Sreenivasan",
          "castcharacter":"Nobal Joseph",
          "castimage":"https://tse1.mm.bing.net/th/id/OIP.cs3Ue1siv07I8ahUFVQ8MgHaFj?rs=1&pid=ImgDetMain&o=7&rm=3"
        },
        {
          "castname":"Dhyan Sreenivasan",
          "castcharacter":"Godson",
          "castimage":"https://img.manoramanews.com/content/dam/mm/mnews/entertainment/latest/images/2024/12/23/dhyan-sreenivasan.jpg?w=900&h=504"
        },
        {
          "castname":"Balu Varghese",
          "castcharacter":"Mahi ",
          "castimage":"https://image.tmdb.org/t/p/original/v1Ydyfxe3bFxXiHB4cU5Hmoh5hV.jpg"
        },
      ],
      "crew":[
        {"name":"Dhanajay Shankar",
        "role":"Director",
        "image":"https://tse3.mm.bing.net/th/id/OIP.WQnXYe91GNFVJjbUac5xFQAAAA?rs=1&pid=ImgDetMain&o=7&rm=3"
        },
        
         {"name":"Gokulam Gopalan",
        "role":"Producer",
        "image":"https://gokulamhotels.com/gokulamgrandtrivandrum/images/gokulam-gopalan.jpg"
        },

         {"name":"Shaan Rahman",
        "role":"Musician",
        "image":"https://tse4.mm.bing.net/th/id/OIP.yy3PnsjzKhxTtRNXCVgoKgHaEK?rs=1&pid=ImgDetMain&o=7&rm=3"
        },

         {"name":"Fahim Safar",
        "role":"Writer",
        "image":"https://images.news18.com/ibnlive/uploads/2022/12/untitled-1-272-16718779924x3.jpg?impolicy=website&width=640&height=480"
        },

         {"name":"Noorin Shereef",
        "role":"Writer",
        "image":"https://tse3.mm.bing.net/th/id/OIP.c8WymYK5Zm8Mhgv2FmL0XAHaJI?rs=1&pid=ImgDetMain&o=7&rm=3"
        }
      ]
    },


    // {
    //   "image":
    //       "https://img.mathrubhumi.com/view/acePublic/alias/contentid/1l1vd1y87fkxtqfn4oe/1/haal-movie-jpg.webp?f=3:2&q=0.75&w=900",
    //   "title": "Haal(Malayalam)",
    //   "rating": "8.9",
    //   "votes": "1.1K+",
    //    "duration":"2h 32m",
    //   "type":"Romanty, Comedy, Thriller, ",
    //   "date":" 18 Dec, 2025",
    // },
    {

      "image2":
          "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhL5Wh1VyoX7YsblPAhUln1TsvRlme7CxRBw4R4BxrpqEXvJpWO8J8FLU_pfWYm7FZwWymzm7RbHkbXefhNbvKdGgvWimaoMA-UGr_NRHaSszEsse_kqmBoFtn_Q1XaDNQfikFQpMxJ1TGphWNHw7t2qZvv27l2eBM9JnoiaXcu-ACHTMROQHc7MTu4PxwA/s16000/images%20(64).jpeg",
      "image":
          "https://images.timesnownews.com/thumb/msid-152702833,width-1280,height-720,resizemode-75/152702833.jpg",
      "title": "Dhurandhar",
      "rating": "9.3",
      "votes": "454K+",
       "duration":"3h 30m",
      "type":"Action, Thriller, ",
      "date":" 5 Dec, 2025",
       "cast":[
        {
          "castname":"Ranveer Singh",
          "castcharacter":"Hamza Ali Mazar ",
          "castimage":"https://deadline.com/wp-content/uploads/2023/05/Collage-Maker-30-May-2023-10-24-AM-4404.jpg"
        },
        {
          "castname":"Akshaye Khanna",
          "castcharacter":"Rehman Dakait",
          "castimage":"https://static.india.com/imageTopics/387bce1395f311cd335595f4b84921dc.jpg"
        },
        {
          "castname":"Sanjay Dutt",
          "castcharacter":"SP Chaudhary",
          "castimage":"https://resize.indiatvnews.com/en/resize/newbucket/1080_-/2023/07/sd-1690602748.jpg"
        },
        {
          "castname":"R Madhavan",
          "castcharacter":"Ajay Sanyal",
          "castimage":"https://assets.telegraphindia.com/telegraph/2024/Jul/1721370732_madhavan.jpg"
        },
        {
          "castname":"Arjun Rampal",
          "castcharacter":"Major Iqubal ",
          "castimage":"https://tse1.explicit.bing.net/th/id/OIP.2iztpOvr7Yd8yfV9y1icWQHaLH?rs=1&pid=ImgDetMain&o=7&rm=3"
        },
      ],
      "crew":[
        {"name":"Aditya Dhar",
        "role":"Director,Producer",
        "image":"https://stat1.bollywoodhungama.in/wp-content/uploads/2021/04/Director-Aditya-Dhar-says-cinema-halls-will-see-a-bigger-audience-after-50-of-the-population-is-vaccinated.jpeg"
        },
        
         {"name":"Jyoti Deshpande",
        "role":"Producer",
        "image":"https://stat5.bollywoodhungama.in/wp-content/uploads/2024/09/Jyoti-Deshpande-profile.jpg"
        },

         {"name":"Lokesh Dhar",
        "role":"Producer",
        "image":"https://tse1.explicit.bing.net/th/id/OIP.PoX6pbEC_nhuTyIxhrTfhwAAAA?rs=1&pid=ImgDetMain&o=7&rm=3"
        },

         {"name":"Jio Studios",
        "role":"Presenter",
        "image":"https://in.bmscdn.com/iedb/artist/images/website/poster/large/jio-studios-2023260-1730111679.jpg"
        },

         {"name":"B62 Studios",
        "role":"Production House",
        "image":"https://tse4.mm.bing.net/th/id/OIP.c_osIZLTTfTuwBtBbQMMlAHaHa?rs=1&pid=ImgDetMain&o=7&rm=3"
        }
      ]
    },
  ];



List<Map<String, dynamic>> categoryList = [
  {
    "title": "Movies",
    "icon": "assets/icons/movie.png",
    "screen":  Movies(),
  },
  {
    "title": "HSBC\nLounge",
    "icon": "assets/icons/lounge.png",
    "screen": const Hsbclounge(),
  },
  {
    "title": "Music\nShows",
    "icon": "assets/icons/music.png",
    "screen": const Musicshow(),
  },
  {
    "title": "Men’s\n T20WC 2026",
    "icon": "assets/icons/cricket.png",
    "screen": const Menst20(),
  },
  {
    "title": "Kids\nZone",
    "icon": "assets/icons/kids.png",
    "screen": const Kidszone(),
  },
   {
    "title": "Sports",
    "icon": "assets/icons/sports.png",
    "screen": const Sports(),
  },
   {
    "title": "See All",
    "icon": "assets/icons/layers.png",
    "screen": const Seeall(),
  },
];


 List<Map<String, String>> newyear=[
  {"image":"https://assets-in.bmscdn.com/nmcms/events/banner/desktop/media-desktop-vedan-live-a-boche-new-year-2026-0-2025-12-2-t-3-7-6.jpg",
    "title":"Vedan Live - A Boche New Year 2026",
    "date":"Wed, 31 Dec",
    "venue":"Boche 1000 Acre: Wayanad"
  },
   {
    "image":"https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-V2VkLCAzMSBEZWMgb253YXJkcw%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00471318-gpajgtnknn-portrait.jpg",
    "title":"SPACETECH FESTIVAL WINTER EDITION",
    "date":"Wed, 31 Dec onwards",
    "venue":"Palm Bliss Resort & Spa: Kullu",
   }
    


  ];



   List<Map<String, String>> planfortoday=[
  
  {"image":"https://tse2.mm.bing.net/th/id/OIP.Ysou3aI0o03qS0SG4N0H3gHaKd?rs=1&pid=ImgDetMain&o=7&rm=3",
    "title":"Jung Koode Exhibition Golden : The Moments",
    "date":"Wed, 7 Jan onwards",
    "venue":"Stage 1,Mehaboob Studios: Mumbai Artist Leagacy"
  },
   {
    "image":"https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U2F0LCAyNiBPY3Q%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end:l-image,i-discovery-catalog@@icons@@bundle-icon-shadow-4x.png,lx-15,ly-15,w-50,l-end/et00135711-eppyfgqmzv-portrait.jpg",
    "title":"Comedy Ladder",
    "date":"Wed, 7 Jan onwards",
    "venue":"Multiple venues\n Stand Up Comedy",
   }
    
  ];




   class Thinksincity {
  final String image;
  final String title;
  final String info;
  final String description;
  final String price;

  Thinksincity({
    required this.image,
    required this.title,
    required this.info,
    required this.description,
    required this.price
  });
}

final List<Thinksincity> citythings = [
    Thinksincity(
      image:
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U2F0LCAxMCBKYW4gb253YXJkcw%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00063784-npfqsbzmaj-portrait.jpg",
      title: "Wonderla Amusement Park Kochi",
      info: "Amusement park/Tourist attraction",
      description:
          "The happiest place in Gods on country -Left or Right,Wherever you look you can hear giggles,screms.", price: '₹1189 onwards',
    ),
    Thinksincity(
      image:
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-RnJpLCAxNyBBcHI%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00461392-qxnxjecnvf-portrait.jpg",
      title: "CALVIN HARRIS- Live in Bengaluru",
      info: "Music Shows",
      description: "CALVIN HARRIS -Live in bengaluru! The wait is finally over .The man who redifined dance,music", price: '₹3000 onwards',
    ),
      Thinksincity(
      image:
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-RnJpLCA5IEphbiBvbndhcmRz,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end:l-text,ie-UFJPTU9URUQ%3D,co-FFFFFF,bg-DC354B,ff-Roboto,fs-20,lx-N16,ly-12,lfo-top_right,pa-12_14_12_14,r-6,l-end/et00440528-emygavqqbp-portrait.jpg",
      title: "Silver Strom: Water&Amusement Park",
      info: "Amusement parks",
      description: "", price: '₹200 onwards',
    ),
    
  ];


 final List<Map<String, String>> musishow = [
    {
      'image':
          'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U2F0LCAyNCBKYW4gb253YXJkcw%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end:l-text,ie-UFJPTU9URUQ%3D,co-FFFFFF,bg-DC354B,ff-Roboto,fs-20,lx-N16,ly-12,lfo-top_right,pa-12_14_12_14,r-6,l-end/et00458267-mznkfpbrve-portrait.jpg',
      'date': 'Sat, 24 Jan onwards',
      'title': 'Lollapalooza India 2026',
      'location': 'Mahalaxmi Race Cousese:Mumbai',
      "type":"Concerts"
    },
    {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-RnJpLCAxNyBBcHI%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00461392-qxnxjecnvf-portrait.jpg',
      'date': 'Fri, 17 Apr onwards',
      'title': 'CALVIN HARRIS-Live in Bengaluru',
      'location': 'NICE Grounds:Bengaluru',
      "type":"Concerts"
    },
    {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-RnJpLCAyMyBKYW4%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00469594-gjrmfczsls-portrait.jpg',
      'date': 'Fri, 23 Jan',
      'title': 'Linkin Park:From Zero World Tour 2026',
      'location': 'Brigade Innovation Gardens:Muddenahalli,Bengaluru',
      "type":"Concerts"
    },
     {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-RnJpLCA5IEphbiBvbndhcmRz,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00469295-pleswjxnrp-portrait.jpg',
      'date': 'Fri, 9 Jan onwards',
      'title': 'Jung Kook Exhibihition"GOLDEN:The Moments"',
      'location': 'Stage 1 mehaboob studios:Mumbai',
      "type":"Artist Legacy"
    },
    {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-VGh1LCAyMiBKYW4%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00464841-jchggvcgya-portrait.jpg',
      'date': 'Thu, 22 Jan onwards',
      'title': 'John Mayer Solo-Live in Mumbai,2026',
      'location': 'Mahalaxmi Race Cousese:Mumbai',
      "type":"Concerts"
    },
      {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-VGh1LCAzMCBBcHI%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00480699-vleemvxwmb-portrait.jpg',
      'date': 'Sun, 26 Apr onwards',
      'title': 'Scorpions Coming Home Live 2026- Bengaluru',
      'location': 'NICE Grounds:Bengaluru',
      "type":"Concerts"
    },
     {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U3VuLCAyOSBNYXI%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00475232-taxugdgkxn-portrait.jpg',
      'date': 'Sun, 29 Mar onwards',
      'title': 'Def Leppard India Tour-Bengaluru',
      'location': 'NICE Grounds:Bengaluru',
      "type":"Concerts"
    },
  ];

 final List<Map<String, String>> comedyList = [
    {
      'image':
          'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-RnJpLCA5IEphbiBvbndhcmRz,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end:l-image,i-discovery-catalog@@icons@@bundle-icon-shadow-4x.png,lx-15,ly-15,w-50,l-end/et00135711-eppyfgqmzv-portrait.jpg',
      'date': 'Fri, 9 Jan onwards',
      'title': 'Comedy Ladder',
      'subtitle': 'Multiple Venues',
    },
    {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-RnJpLCAxNiBKYW4gb253YXJkcw%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00355125-wteqqdaagg-portrait.jpg',
      'date': 'Fri, 16 Jan onwards',
      'title': 'Kisi Ko Batana Mat Ft. Anubhav Singh Bassi',
      'subtitle': 'MLR Convention Centre',
    },
    {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-VGh1LCAyOSBKYW4%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end:l-image,i-discovery-catalog@@icons@@bundle-icon-shadow-4x.png,lx-15,ly-15,w-50,l-end/et00135461-nwfldcpufj-portrait.jpg',
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

   final List<Map<String, String>> topSport = [
    {
      'image':
          'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U3VuLCAyNSBKYW4%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00478654-jfarhrfvrr-portrait.jpg',
      'date': 'Sun, 25 Jan ',
      'title': 'India Vs New Zealand\n3rd T20I',
      'type': 'T20',
    },
    {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-RnJpLCA5IEphbiBvbndhcmRz,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end:l-image,i-discovery-catalog@@icons@@bundle-icon-shadow-4x.png,lx-15,ly-15,w-50,l-end/et00465007-lbsnyszhcf-portrait.jpg',
      'date': 'Fri, 9 Jan onwards',
      'title': 'ISPL Season 3',
      'type': 'T10',
    },
    {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-TW9uLCAxOSBKYW4%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00475921-ccrlujlwtk-portrait.jpg',
      'date': 'Mon, 19 Jan',
      'title': 'Ahmedabad vs Chennai',
      'type': 'T10',
    },
     {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-TW9uLCAyNiBKYW4%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00475928-auklrgwnxh-portrait.jpg',
      'date': 'Mon, 26 Jan',
      'title': 'Delhi vs Kolkata',
      'type': 'T10',
    },
     {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U3VuLCAxIE1hcg%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00478245-gesthhlbwn-portrait.jpg',
      'date': 'Sun, 1 Mar',
      'title': 'Red Bull Moto Jam\n(Pre-Registration)',
      'type': 'Bike Racing',
    },
     {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-VHVlLCAyMCBKYW4%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00475922-tpnjxtdeuu-portrait.jpg',
      'date': 'Tue, 20 Jan',
      'title': 'Delhi vs Chennai',
      'type': 'T10',
    },
     {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U2F0LCAyNCBKYW4%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00475926-jvwwkcyjcy-portrait.jpg',
      'date': 'Sat, 24 Jan',
      'title': 'Chennai vs Srinagar &\nHyderabad vs Mumbai',
      'type': 'T10',
    },
  ];


    final List<Map<String, String>> popularevent = [
    {
      'image':
          'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U2F0LCAyNCBKYW4gb253YXJkcw%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end:l-text,ie-UFJPTU9URUQ%3D,co-FFFFFF,bg-DC354B,ff-Roboto,fs-20,lx-N16,ly-12,lfo-top_right,pa-12_14_12_14,r-6,l-end/et00458267-mznkfpbrve-portrait.jpg',
      'date': 'Sat 24 Jan onward ',
      'title': 'Lollapalooza india 2026',
      'type': 'Concerts',
    },
    {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-VHVlLCAyMSBBcHI%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00480700-cnrlwwpwnf-portrait.jpg',
      'date': 'Thu, 30 Apr ',
      'title': 'Scorpions Coming Home Live 2026 -Mumbai',
      'type': 'Concerts',
    },
    {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-RnJpLCAyNyBNYXI%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00475231-xsjararabu-portrait.jpg',
      'date': 'Fri, 27 Mar',
      'title': 'Def Leppard India Tour - Mumbai',
      'type': 'Concerts',
    },
     {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U3VuLCAxOCBKYW4gb253YXJkcw%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end:l-image,i-discovery-catalog@@icons@@bundle-icon-shadow-4x.png,lx-15,ly-15,w-50,l-end/et00446959-whxkyxwmht-portrait.jpg',
      'date': 'Sun, 18 Jan onwards',
      'title': 'Sanam Live India Tour',
      'type': 'Multiple Venues',
    },
     {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-RnJpLCAxNiBKYW4gb253YXJkcw%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end:l-image,i-discovery-catalog@@icons@@bundle-icon-shadow-4x.png,lx-15,ly-15,w-50,l-end/et00470839-lyfzxzpgjl-portrait.jpg',
      'date': 'Fri, 16 Jan onwards',
      'title': 'Anuv Jain - Dastakhat India Tour 2026',
      'type': 'Multiple Venues',
    },
     {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U2F0LCAyNCBKYW4%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00478088-dzwtmsuthb-portrait.jpg',
      'date': 'Sat, 24 Jan',
      'title': 'Lollapalooza India 2026 -Rupay Amplified Accesss',
      'type': 'Concerts',
    },
     {
      'image': 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-RnJpLCAyMyBKYW4%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00468551-sgwsrvzrzr-portrait.jpg',
      'date': 'Fri, 23 Jan',
      'title': 'Calum Scott - The Avenoir Tour 2026',
      'type': 'Concerts',
    },
  ];

  final List<Map<String,String>> MustAttendLive=[
    {
      "image":"https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-RnJpLCA5IEphbiBvbndhcmRz,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end:l-text,ie-UFJPTU9URUQ%3D,co-FFFFFF,bg-DC354B,ff-Roboto,fs-20,lx-N16,ly-12,lfo-top_right,pa-12_14_12_14,r-6,l-end/et00440528-emygavqqbp-portrait.jpg",
      "date":"Sat 10 Jan onwards",
      "title":"Silver Strom: Snow, Water&Amusement Park",
      "location":"Silver Storm-Anamala Road:Chalakudy"
    },
    {
      "image":"https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U2F0LCAyNCBKYW4gb253YXJkcw%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end:l-text,ie-UFJPTU9URUQ%3D,co-FFFFFF,bg-DC354B,ff-Roboto,fs-20,lx-N16,ly-12,lfo-top_right,pa-12_14_12_14,r-6,l-end/et00458267-mznkfpbrve-portrait.jpg",
      "date":"Sat 24 Jan onward",
      "title":"Lollapalooza india 2026",
      "location":"Mahalaxmi Race Course:Mumbai"
    },
    {
      "image":"https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-RnJpLCAxNyBBcHI%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00461392-qxnxjecnvf-portrait.jpg",
      "date":"Fri, 17 Apr onwards",
      "title":"CALVIN HARRIS-Live in Bengaluru",
      "location":"NICE Grounds:Bengaluru"
    },
     {
      "image":"https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U3VuLCAyNSBKYW4%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00478654-jfarhrfvrr-portrait.jpg",
      "date":"Sun, 25 Jan",
      "title":"India Vs New Zealand\n3rd T20I",
      "location":"ACA Stadium,Guwahati"
    },
     {
      "image":"https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-RnJpLCAyMyBKYW4%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00469594-gjrmfczsls-portrait.jpg",
      "date":"Fri, 23 Jan",
      "title":"Linkin Park:From Zero World Tour 2026",
      "location":"Brigade Innovation Gardens:Muddenahalli,Bengaluru"
    },
  ];