import 'package:flutter/material.dart';

class NetBank extends StatefulWidget {
  const NetBank({super.key});

  @override
  State<NetBank> createState() => _NetBankState();
}

class _NetBankState extends State<NetBank> {
  List<Map<String, String>> popularBanks = [
    {
      "name": "SBI Bank",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/SBI-logo.svg/2560px-SBI-logo.svg.png",
    },
    {
      "name": "HDFC Bank",
      "image":
          "https://1.bp.blogspot.com/-si2dzXq5_7o/YCqD6NmLHUI/AAAAAAAAB50/dli_4hqMX1sIKaadhLRHfklKcD_H-QO2gCLcBGAsYHQ/w800/HDFC%2BBANK%2BPNG.png",
    },
    {
      "name": "ICICI Bank",
      "image":
          "https://tse1.mm.bing.net/th/id/OIP.ckKA_YJJ0vnbRVLoJTnGGAHaHa?rs=1&pid=ImgDetMain&o=7&rm=3",
    },
    {
      "name": "AXIS Bank",
      "image":
          "https://tse1.mm.bing.net/th/id/OIP._-HsGv5bkSyDmmuJHpXabwHaHZ?w=797&h=796&rs=1&pid=ImgDetMain&o=7&rm=3",
    },
  ];

  List<Map<String, String>> otherBanks = [
    {
      "name": "Kotak Bank",
      "image":
          "https://tse3.mm.bing.net/th/id/OIP.KoeAqStI9Wb7Fs8y59dzDAHaHZ?w=1001&h=1000&rs=1&pid=ImgDetMain&o=7&rm=3",
    },
    {
      "name": "Bank of India",
      "image":
          "https://w7.pngwing.com/pngs/46/360/png-transparent-bank-of-india-canara-bank-online-banking-mobile-banking-bank-angle-service-india-thumbnail.png",
    },
    {
      "name": "Bank of Maharashtra",
      "image":
          "https://w7.pngwing.com/pngs/756/482/png-transparent-bank-of-maharashtra-logo-thumbnail-bank-logos.png",
    },
    {
      "name": "Central Bank of India",
      "image":
          "https://assets-netstorage.groww.in/stock-assets/logos2/CENTRALBK.png",
    },
    {
      "name": "Canara Bank",
      "image":
          "https://media.9curry.com/uploads/organization/image/2116/canara-bank-logo.png",
    },
    {
      "name": "Cosmos Bank",
      "image": "https://media.9curry.com/uploads/organization/image/1152/cosmos-bank-logo.gif",
    },
    {
      "name": "PNB Corporate Bank",
      "image":
          "https://tse4.mm.bing.net/th/id/OIP.GIF74LU4bpdBgDO9HfU6tgAAAA?rs=1&pid=ImgDetMain&o=7&rm=3",
    },
    {
      "name": "Catholic Syrian Bank",
      "image": "https://www.csb.co.in/images/logo.png",
    },
    {
      "name": "City Union Bank",
      "image": "https://www.cityunionbank.com/images/logo.png",
    },
    {
      "name": "Karnataka Bank",
      "image":
          "https://tse1.mm.bing.net/th/id/OIP.AqQZIpMLUJVT-l7XPnqJkQHaEK?rs=1&pid=ImgDetMain&o=7&rm=3",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, size: 20),
        ),
        title: Text(
          "Net Banking",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              //padding: const EdgeInsets.all(16),
              color: Colors.white,
              child: TextField(
                
                decoration: InputDecoration(
                  hintText: "Search by Bank Name",
                  hintStyle: TextStyle(color: Colors.grey.shade400,fontSize: 14),
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  filled: true,
                  fillColor:  Color(0xFFF5F5F5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 12,
                    right: 16,
                    bottom: 8,
                  ),
                  color: const Color(0xFFF5F5F5),
                  child: const Text(
                    "Popular Banks",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: popularBanks.length,
                    separatorBuilder: (context, index) {
                      return Divider(
                        height: 1,
                        color: Colors.grey.shade200,
                      );
                    },
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {},
                        leading: Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.all(6),
                          child: Image.network(
                            popularBanks[index]["image"]!,
                            fit: BoxFit.contain,
                          ),
                        ),
                        title: Text(
                          popularBanks[index]["name"]!,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 12,
                    right: 16,
                    bottom: 8,
                  ),
                  color: const Color(0xFFF5F5F5),
                  child: const Text(
                    "Other Banks",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: otherBanks.length,
                    separatorBuilder: (context, index) {
                      return Divider(
                        height: 1,
                        color: Colors.grey.shade200,
                      );
                    },
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {},
                        leading: Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.all(6),
                          child: Image.network(
                            otherBanks[index]["image"]!,
                            fit: BoxFit.contain,
                          ),
                        ),
                        title: Text(
                          otherBanks[index]["name"]!,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
