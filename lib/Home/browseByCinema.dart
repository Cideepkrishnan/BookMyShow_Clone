import 'package:flutter/material.dart';

class Browsebycinema extends StatefulWidget {
  const Browsebycinema({super.key});

  @override
  State<Browsebycinema> createState() => _BrowsebycinemaState();
}

class _BrowsebycinemaState extends State<Browsebycinema> {
  final List<Map<String, String>> cinemas = [
    {
      "name": "VGM Multiplex A/C 2K 7.1 Dolby",
      "address":
          "Hosdurg Kanhangad, Alamippalli Road, Near Hotel Landmark, Kanhangad, Kerala 671315, India",
    },
    {
      "name": "Deepthi Cinemas A/c 2K Dolby Atmos: Kanhangad",
      "address":
          "Deepthi Cinemas, Railway Station, Puthiyavalapu, Opposite Kanhangad, Kanhangad, Kerala 671315, India",
    },
    {
      "name": "Vinayaka Theater Complex 2K A/C Dolby 7.1",
      "address":
          "Hosdurg, Vinayaka Theater Road, Karattuvayal, Near Raktheswari Temple, Kanhangad, Kerala",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,size: 16,)),
        title: Text(
          "Cinemas",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.filter_list, size: 14)),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search by cinema or area",
                hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 16,
                  color: Colors.grey,
                ),
                //contentPadding: const EdgeInsets.symmetric(vertical: 12),
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cinemas.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.favorite_outline, color: Colors.grey),
                      title: Text(
                        cinemas[index]['name']!,
                        style: TextStyle(fontSize: 13),
                      ),
                      subtitle: Text(
                        cinemas[index]['address']!,
                        style: TextStyle(fontSize: 11, height: 1.4),
                        maxLines: 2,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black45,
                      ),
                    ),
                    Divider(height: 4, thickness: 1, indent: 16, endIndent: 16),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
