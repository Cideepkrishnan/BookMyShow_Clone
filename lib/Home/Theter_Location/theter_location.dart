import 'package:flutter/material.dart';

class CitySelector extends StatefulWidget {
  const CitySelector({super.key});

  @override
  State<CitySelector> createState() => _CitySelectorState();
}

class _CitySelectorState extends State<CitySelector> {
  final List<Map<String, String>> popularCities = [
    {'name': 'Mumbai', 'image': 'assets/icons/mumbai.png'},
    {'name': 'Delhi-NCR', 'image': 'assets/icons/delhi.png'},
    {'name': 'Bengaluru', 'image': 'assets/icons/bengaluru.png'},
    {'name': 'Hyderabad', 'image': 'assets/icons/hyderabad.png'},
    {'name': 'Chandigarh', 'image': 'assets/icons/chandigarh.png'},
    {'name': 'Ahmedabad', 'image': 'assets/icons/ahmedabad.png'},
    {'name': 'Pune', 'image': 'assets/icons/pune.png'},
    {'name': 'Chennai', 'image': 'assets/icons/chennai.png'},
    {'name': 'Kolkata', 'image': 'assets/icons/kolkata.png'},
    {'name': 'Kochi', 'image': 'assets/icons/kochi.png'},
  ];

  final List<String> otherCities = [
    'Aalo',
    'Abohar',
    'Abu Road',
    'Achampet',
    'Acharapakkam',
    'Addanki',
    "Baihar",
    "Balod",
    "Banki",
    "Barhi",
    "Basna",
    "Chelur",
    "Chennur",
    "Cherthala",
    "Cheyyur",
    "Chikodi",
    "Churu",
    "Dang",
    "Dandeli",
    "Deesa",
    "Dewas",
    "Dhar",
    "Erode",
    "Erattupetta",
    "Gajwal",
    "Gangtok",
    "Garia",
    "Gaya",
    "Harda",
    "Hassan",
    "Hisar",
    "Hosur",
    "Hunsur",
    "Idar",
    "Indi",
    "Jaffna",
    "Jaipur",
    "Jalore",
    "Jammu",
    "Kaij",
    "Kallara",
    "Kandur",
    "kanigiri",
    "Ladakh",
    "Latur",
    "Leeja",
    "Lonar",
    "Lucknow",
    "Maddur",
    "Madikeri",
    "Mahad",
    "Maheshwar",
    "Nagoda",
    "Nashik",
    "Nellore",
    "Nenmara",
    "Nilagiri",
    "Ochira",
    "Ooty",
    "Pala",
    "Palani",
    "Palladam",
    "Payyanur",
    "Ranchi",
    "Ranni",
    "Sagar",
    "Salem",
    "Sangola",
    "Srinagar",
    "Tezu",
    "Thamaraserry",
    "Theni",
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black,size: 20,),
        ),
        title: const Text(
          'Kanhangad',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for your city',
                  hintStyle: TextStyle(
                    color: Colors.black45,
                    fontSize: 12,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade500,
                    size: 18,
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(
                  Icons.gps_fixed_outlined,
                  color: Colors.red.shade400,
                  size: 18,
                ),
                const SizedBox(width: 8),
                Text(
                  'Auto Detect My Location',
                  style: TextStyle(
                    color: Colors.red.shade400,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            color: const Color(0xFFF0EFEF),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(
              'POPULAR CITIES',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 13,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                childAspectRatio: 0.75,
              ),
              itemCount: popularCities.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.shade300,
                     // width: 1,
                    ),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        popularCities[index]['image']!,
                        height: 40,
                        width: 50,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          popularCities[index]['name']!,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                            height: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            width: double.infinity,
          color: const Color(0xFFF0EFEF),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(
              'OTHER CITIES',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 13,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: otherCities.length,
            itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey.shade200,
                        width: 1,
                      ),
                    ),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.only(
                      left: 20,
                    ),
                    title: Text(
                      otherCities[index],
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                );
              },
            ),
          ]
          ),
        
      ),
    );
  }
}