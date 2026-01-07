import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void displaybottomsheet(BuildContext context){
  showModalBottomSheet(context: context, builder: (context) {
    return Container(
      width: double.maxFinite,
      height: 300,
      child:
      //  Align(
      //   alignment: Alignment.topRight,
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close)),
      //   )),
      Column(
        children: [
          TextField(decoration: InputDecoration(border: OutlineInputBorder()),),
        ],
      )


    );
  },);
}