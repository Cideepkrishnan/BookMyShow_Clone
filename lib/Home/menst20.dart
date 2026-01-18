import 'package:flutter/material.dart';

class T20WorldCupScreen extends StatefulWidget {
  const T20WorldCupScreen({super.key});

  @override
  State<T20WorldCupScreen> createState() => _T20WorldCupScreenState();
}

class _T20WorldCupScreenState extends State<T20WorldCupScreen> {
  List<Map<String, String>> teams = [
    {
      "name": "INDIA",
      "flag": "https://flagcdn.com/w320/in.png",
    },
    {
      "name": "SRI LANKA",
      "flag": "https://flagcdn.com/w320/lk.png",
    },
    {
      "name": "AFGHANISTAN",
      "flag": "https://flagcdn.com/w320/af.png",
    },
    {
      "name": "AUSTRALIA",
      "flag": "https://flagcdn.com/w320/au.png",
    },
    {
      "name": "BANGLADESH",
      "flag": "https://flagcdn.com/w320/bd.png",
    },
    {
      "name": "CANADA",
      "flag": "https://flagcdn.com/w320/ca.png",
    },
    {
      "name": "ENGLAND",
      "flag": "https://flagcdn.com/w320/gb-eng.png",
    },
    {
      "name": "IRELAND",
      "flag": "https://flagcdn.com/w320/ie.png",
    },
    {
      "name": "ITALY",
      "flag": "https://flagcdn.com/w320/it.png",
    },
    {
      "name": "NAMIBIA",
      "flag": "https://flagcdn.com/w320/na.png",
    },
    {
      "name": "NEPAL",
      "flag": "https://flagcdn.com/w320/np.png",
    },
    {
      "name": "NETHERLANDS",
      "flag": "https://flagcdn.com/w320/nl.png",
    },
    {
      "name": "NEW ZEALAND",
      "flag": "https://flagcdn.com/w320/nz.png",
    },
    {
      "name": "OMAN",
      "flag": "https://flagcdn.com/w320/om.png",
    },
    {
      "name": "PAKISTAN",
      "flag": "https://flagcdn.com/w320/pk.png",
    },
    {
      "name": "SOUTH AFRICA",
      "flag": "https://flagcdn.com/w320/za.png",
    },
    {
      "name": "UAE",
      "flag": "https://flagcdn.com/w320/ae.png",
    },
    {
      "name": "USA",
      "flag": "https://flagcdn.com/w320/us.png",
    },
     {
      "name": "WEST INDIES",
      "flag": "https://flagcdn.com/w320/bb.png",
    },
    {
      "name": "ZIMBABWE",
      "flag": "https://flagcdn.com/w320/zw.png",
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
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
        ),
        title: Image.asset(
          "assets/images/wccup.jpg",
          height: 40,
          fit: BoxFit.contain,
        ),
        
       // centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
              height: 80,
              //width: double.maxFinite,
              decoration: BoxDecoration(
                color: const Color(0xFF1A1464),
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage(
                    "assets/images/viewmatch.png",
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Text(
                "Find Matches By Team",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 30),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: teams.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 12,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x4D000000),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            teams[index]["flag"]!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        teams[index]["name"]!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        maxLines: 2,
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