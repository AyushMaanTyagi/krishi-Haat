import 'package:flutter/material.dart';
import 'package:flutter_application_1/Uicomponent/helpful.dart';
import 'package:flutter_application_1/Uicomponent/textandbuttons.dart';
class Menueitems extends StatelessWidget {
  const Menueitems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: MediaQuery.of(context).size.width*0.3,
          color: green,
          child: displaytxt(s: "My Orders",fs: 18,color: white),
        ),
       const SizedBox(height: 5,),
          
        Container(
          height: 30,
          width: MediaQuery.of(context).size.width*0.3,
          //child: displaytxt(s: "History"),
          color: green,
          child: displaytxt(s: "History",fs: 18,color: white),
        ),
       const SizedBox(height: 5,),
         Container(
          height: 30,
          width: MediaQuery.of(context).size.width*0.3,
          //child: displaytxt(s: "History"),
          color: green,
          child: displaytxt(s: "Profile",fs: 18,color: white),
        ),
      ],
    );
  }
}