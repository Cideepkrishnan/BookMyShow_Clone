import 'package:flutter/material.dart';

class RedeemPoint extends StatefulWidget {
  const RedeemPoint({super.key});

  @override
  State<RedeemPoint> createState() => _RedeemPointState();
}

class _RedeemPointState extends State<RedeemPoint> {
 
  List<Map<String, String>> bankingPartners = [
    {
      "name": "Xchange Rewards",
      "image": "https://tse3.mm.bing.net/th/id/OIP.xyhsFsG9QuHnk_gSGo-LKAHaHa?rs=1&pid=ImgDetMain&o=7&rm=3",
    },
    {
      "name": "Yes Bank Debit Card",
      "image":
          "https://images.seeklogo.com/logo-png/55/1/yes-bank-logo-png_seeklogo-556505.png",
    },
    {
      "name": "SBI Debit Card",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/SBI-logo.svg/2560px-SBI-logo.svg.png",
    },
    {
      "name": "AU Bank Credit Card",
      "image":
          "https://www.easemydeal.com/emd-images/banks/AU.png",
    },
    {
      "name": "Bandhan Bank",
      "image":
          "https://tse1.mm.bing.net/th/id/OIP.bVDxvHhUvUQNNX3_oqKZaQHaHa?w=3000&h=3000&rs=1&pid=ImgDetMain&o=7&rm=3",
    },
    {
      "name": "Bank of India Debit Card",
      "image":
          "https://w7.pngwing.com/pngs/46/360/png-transparent-bank-of-india-canara-bank-online-banking-mobile-banking-bank-angle-service-india-thumbnail.png",
    },
    {
      "name": "Canara Bank Credit Card",
      "image":
          "https://media.9curry.com/uploads/organization/image/2116/canara-bank-logo.png",
    },
    {
      "name": "Canara Bank Debit Card",
      "image":
          "https://media.9curry.com/uploads/organization/image/2116/canara-bank-logo.png",
    },
    {
      "name": "Central Bank of India Credit Card",
      "image":
          "https://assets-netstorage.groww.in/stock-assets/logos2/CENTRALBK.png",
    },
    {
      "name": "Central Bank of India",
      "image":
          "https://assets-netstorage.groww.in/stock-assets/logos2/CENTRALBK.png",
    },
    {
      "name": "IDBI Credit Card",
      "image":
          "https://seekvectors.com/files/download/idbi-bank-logo-04.png",
    },
    {
      "name": "Indian Bank",
      "image":
          "https://vectorseek.com/wp-content/uploads/2023/06/Indian-Bank-Logo-Vector.jpg",
    },
    {
      "name": "Karur Vysya Bank Debit Card",
      "image":
          "https://tse2.mm.bing.net/th/id/OIP.GMYdPZM32FxzGR-gTQjv6wHaD4?w=1200&h=630&rs=1&pid=ImgDetMain&o=7&rm=3",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        elevation: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, size: 20),
        ),
        title: Text(
          "Redeem Points",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        children: [
          Container(
           // padding: const EdgeInsets.all(16),
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search by Bank Name",
                hintStyle: TextStyle(color: Colors.grey.shade400,fontSize: 13),
                prefixIcon: Icon(Icons.search, color: Colors.black),
                filled: true,
                fillColor: const Color(0xFFF5F5F5),
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
                  borderSide: const BorderSide(color:Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
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
                      "Pay With Rewards",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Container(
                    // margin: const EdgeInsets.only(
                    //   left: 16,
                    //   right: 16,
                    //   bottom: 8,
                    // ),
                    //padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 3,top: 5,bottom: 5),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Image.network(
                             "https://img.freepik.com/free-vector/wallet-glyph-style-blue-colour_78370-7159.jpg?semt=ais_hybrid",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                              "Pay with Rewards" ,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                 "Unlock rewards up to Rs.500  *T&C Apply",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.grey.shade600,
                                  height: 1.3,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 5),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                           "LINK ACCOUNT",
                            style: const TextStyle(
                              color: Color(0xFFE53935),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
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
                      "Banking Partners",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: bankingPartners.length,
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
                             bankingPartners[index]["image"]!,
                              fit: BoxFit.contain,
                            ),
                          ),
                          title: Text(
                            bankingPartners[index]["name"]!,
                            style: const TextStyle(
                              fontSize: 13,
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
            ),
          ),
        ],
      ),
    );
  }
}
