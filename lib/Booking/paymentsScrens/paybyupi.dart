import 'package:flutter/material.dart';

class Paybyupi extends StatefulWidget {
  const Paybyupi({super.key});

  @override
  State<Paybyupi> createState() => _PaybyupiState();
}

class _PaybyupiState extends State<Paybyupi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFF0EFEF),
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new,size: 20,)),
        title: Text("Pay by any UPI App",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 7,left: 8,right: 8),
            child: Container(
             // height: 200,
               decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: ListTile(
                    leading: Container(
                      height: 30,
                      width: 42,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/gpay.jpg"),fit: BoxFit.cover),
                        border: Border.all(color: Colors.grey)),
                    ),
                    title:Text(
                          "Google Pay",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                  ),
                ),
                Divider(
                  indent: 20,
                  endIndent: 20,
                ),
                SizedBox(
                  height: 66,
                  child: ListTile(
                    leading:  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                     
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.red,
                      size: 25,
                    ),
                  ),
                    title:Text(
                          "Add new UPI",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.red,
                          ),
                        ),
                        subtitle:  Text(
                          "You need to have a registered UPI ID",
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                  ),
                ),
              ],
            ),
            
            ),
          )
        ],
      ),
    );
  }
}