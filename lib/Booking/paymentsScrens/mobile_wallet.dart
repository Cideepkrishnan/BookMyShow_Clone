import 'package:flutter/material.dart';

class MobileWallet extends StatefulWidget {
  const MobileWallet({super.key});

  @override
  State<MobileWallet> createState() => _MobileWalletState();
}

class _MobileWalletState extends State<MobileWallet> {
  List<Map<String, dynamic>> wallets = [
    {
      "name": "Amazon Pay Balance",
      "subtitle":
          "Pay using Amazon Pay Balance and get upto INR 75* back. *T&C Apply",
      "image":
          "https://logodix.com/logo/679450.jpg",
      "trailing": "LINK ACCOUNT",
    },
    {
      "name": "Mobikwik",
      "subtitle": "Pay Using Mobikwik & Get upto 30% Cashback. *T&C Apply.",
      "image":
          "https://tse1.mm.bing.net/th/id/OIP.Y5eroe4Io_w5kbj1nFEeigHaD3?rs=1&pid=ImgDetMain&o=7&rm=3",
      "trailing": "LINK ACCOUNT",
    },
    {
      "name": "Paytm (Wallet | UPI | Saved Cards)",
      "subtitle": "",
      "image":
          "https://www.clipartmax.com/png/middle/170-1703673_paytm-payment-bank-logo-png.png",
      "trailing": "",
    },
    {
      "name": "PayZapp (Wallet | Saved Cards)",
      "subtitle": "",
      "image": "https://mir-s3-cdn-cf.behance.net/projects/404/83c6ea134592901.Y3JvcCw5MjAsNzIwLDE4MCww.png",
      "trailing": "",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         elevation: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, size: 20),
        ),
        title: Text(
          "Mobile Wallets",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 5),
        itemCount: wallets.length,
        separatorBuilder: (context, index) {
          return  Container(
                  height: 1,
                  color: const Color(0xFFECEAEA),
                ); 
        },
        itemBuilder: (context, index) {
          return 
          ListTile(
            leading: Container(
                  height: 50,
                  width: 50,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                  //  color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.network(
                    wallets[index]["image"],
                    fit: BoxFit.contain,
                  ),
                ) ,
                title: Text(
                        wallets[index]["name"],
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ) ,
                      subtitle:  Text(
                          wallets[index]["subtitle"],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey.shade600,
                            height: 1.3,
                          
                          ),
                        ),
                        trailing:  Text(
                    wallets[index]["trailing"],
                    style: const TextStyle(
                      color: Color(0xFFE53935),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  )
          );
        },
      ),
    );
  }
}
