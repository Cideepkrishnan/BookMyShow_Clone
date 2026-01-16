import 'package:flutter/material.dart';

class PayLater extends StatefulWidget {
  const PayLater({super.key});

  @override
  State<PayLater> createState() => _PayLaterState();
}

class _PayLaterState extends State<PayLater> {
   List<Map<String, dynamic>> payLaterOptions = [
    {
      "name": "Amazon Pay Later",
      "subtitle": "Pay using Amazon Pay Later and get upto INR 75* back. *T&C Apply",
      "image": "https://logodix.com/logo/679450.jpg",
      "trailing": "LINK ACCOUNT",
    },
    {
      "name": "LazyPay Credit",
      "subtitle": "",
      "image": "https://cdn-images-1.medium.com/max/1200/1*CxL6FKrFEX5uiNJXxlTfcw.png",
      "trailing": "LINK ACCOUNT",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
         elevation: 0.5,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new,size: 20,)),
        title: Text("Pay Later",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
      ),
      body:  ListView.separated(
        padding: const EdgeInsets.only(top: 5),
        itemCount: payLaterOptions.length,
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
                    payLaterOptions[index]["image"],
                    fit: BoxFit.contain,
                  ),
                ) ,
                title: Text(
                        payLaterOptions[index]["name"],
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87,
                        ),
                      ) ,
                      subtitle:  Text(
                          payLaterOptions[index]["subtitle"],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey.shade600,
                            height: 1.3,
                          
                          ),
                        ),
                        trailing:  Text(
                    payLaterOptions[index]["trailing"],
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