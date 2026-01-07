import 'package:flutter/material.dart';

class Filterscreen extends StatefulWidget {
  const Filterscreen({super.key});

  @override
  State<Filterscreen> createState() => _FilterscreenState();
}

class _FilterscreenState extends State<Filterscreen> {
  final List<String> languages = ["Malayalam", "English", "Hindi"];
  final List<String> genres = [
    "Action",
    "Thriller",
    "Comedy",
    "Fantasy",
    "Adventure",
    "Crime",
    "Drama",
    "Musical",
    "Mystery",
    "Romantic",
    "Sci-Fi",
  ];
  final List<String> format = ["2D", "3D"];
  final Set<String> selectedItems = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
        title: Text("Filters", style: TextStyle(fontSize: 15)),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              setState(() => selectedItems.clear());
            },
            child: const Text(
              "Reset All",
              style: TextStyle(color: Colors.black54, fontSize: 11),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, selectedItems);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            //minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            "Apply",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 40,
              width: double.infinity,
              color: Colors.grey.shade200,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Languages",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: languages.length,
              itemBuilder: (BuildContext context, int index) {
                final isSelected = selectedItems.contains(languages[index]);

                return ListTile(
                  title: Text(languages[index]),
                  trailing: isSelected
                      ? Checkbox(
                          value: true,
                          activeColor: const Color(0xFFE53935),
                          onChanged: (value) {
                            setState(() {
                              value!
                                  ? selectedItems.add(languages[index])
                                  : selectedItems.remove(languages[index]);
                            });
                          },
                        )
                      : null,
                  onTap: () {
                    setState(() {
                      isSelected
                          ? selectedItems.remove(languages[index])
                          : selectedItems.add(languages[index]);
                    });
                  },
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black12,
                );
              },
            ),
            Container(
              height: 40,
              width: double.infinity,
              color: Colors.grey.shade200,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Genres",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: genres.length,
              itemBuilder: (BuildContext context, int index) {
                final isSelected = selectedItems.contains(genres[index]);

                return ListTile(
                  title: Text(genres[index]),
                  trailing: isSelected
                      ? Checkbox(
                          value: true,
                          activeColor: const Color(0xFFE53935),
                          onChanged: (value) {
                            setState(() {
                              value!
                                  ? selectedItems.add(genres[index])
                                  : selectedItems.remove(genres[index]);
                            });
                          },
                        )
                      : null,
                  onTap: () {
                    setState(() {
                      isSelected
                          ? selectedItems.remove(genres[index])
                          : selectedItems.add(genres[index]);
                    });
                  },
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black12,
                );
              },
            ),
            Container(
              height: 40,
              width: double.infinity,
              color: Colors.grey.shade200,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Format",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: format.length,
              itemBuilder: (BuildContext context, int index) {
                final isSelected = selectedItems.contains(format[index]);

                return ListTile(
                  title: Text(format[index]),
                  trailing: isSelected
                      ? Checkbox(
                          value: true,
                          activeColor: const Color(0xFFE53935),
                          onChanged: (value) {
                            setState(() {
                              value!
                                  ? selectedItems.add(format[index])
                                  : selectedItems.remove(format[index]);
                            });
                          },
                        )
                      : null,
                  onTap: () {
                    setState(() {
                      isSelected
                          ? selectedItems.remove(format[index])
                          : selectedItems.add(format[index]);
                    });
                  },
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black12,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
