import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/CategoryModel.dart';
import 'package:flutter_application_1/Models/farmerModel.dart';
import 'package:flutter_application_1/Uicomponent/helpful.dart';
import 'package:flutter_application_1/Uicomponent/searchfarmer.dart';
import 'package:flutter_application_1/Uicomponent/text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class FarmerList extends StatefulWidget {

final String cat;
final String crop;
const FarmerList({super.key, required this.cat, required this.crop});

  @override
  State<FarmerList> createState() => _FarmerListState();
}



List<Farmermodel> farmers = [
    Farmermodel(
        name: "Suresh Kumar",
        pic: 'gobhi.png',
        farmercroplist: [
          Categorymodel(cat: "Vegetables",name: 'Gobhi',imagePath: 'give image path',price: "Rs20/5kg"),
          Categorymodel(cat: "Vegetables",name: 'Onion',imagePath: 'give image path',price: "Rs20/5kg")
        ],
        Farmerkicrops: [{'Gobhi':'20/5kg','Onion':'30/5kg'},{'Banana':'12/3dozen','Orange':'13/5kg'}]
        ),
    Farmermodel(
        name: "Mohan Lal",
        farmercroplist: [
          Categorymodel(cat: "Fruits", name: "Banana", imagePath: "",price: "Rs20/5kg"),
          Categorymodel(cat: "Vegetables", name: "Gobhi", imagePath: "",price: "Rs20/5kg"),
          Categorymodel(cat: "Fruits", name: "Orange", imagePath: "",price: "Rs20/5kg"),
          Categorymodel(cat: "Vegetables", name: "Onion", imagePath: "",price: "Rs20/5kg"),
        ],
        pic: 'banana.png',
        Farmerkicrops: [{'Gobhi':'18/5kg','Onion':'27/5kg'},{'Banana':'11/3dozen','Orange':'14/5kg'}]
        ),

        Farmermodel(
        name: "Ramesh Kumar",
        pic: 'gobhi.png',
        farmercroplist: [
          Categorymodel(cat: "Fruits",name: 'Orange',imagePath: 'give image path',price: "Rs20/5kg"),
          Categorymodel(cat: "Fruits",name: 'Banana',imagePath: 'give image path',price: "Rs20/5kg"),],
          Farmerkicrops: [{'Gobhi':'22/5kg','Onion':'19/5kg'},{}]
          ),
        Farmermodel(
        name: "Mahesh Kumar",
        pic: 'gobhi.png',
        farmercroplist: [
          Categorymodel(cat: "Fruits",name: 'Orange',imagePath: 'give image path',price: "Rs20/5kg"),
          Categorymodel(cat: "Vegetables", name: "Gobhi", imagePath: "",price: "Rs20/5kg"),
          Categorymodel(cat: "Fruits",name: 'Banana',imagePath: 'give image path',price: "Rs20/5kg")],
          Farmerkicrops: [{},{'Banana':'13/5kg','Orange':'18/kg'}]),
  Farmermodel(
        name: "Virendra Kumar",
        pic: 'gobhi.png',
        farmercroplist: [
          Categorymodel(cat: "Fruits",name: 'Orange',imagePath: 'give image path',price: "Rs20/5kg"),
          Categorymodel(cat: "Vegetables",name: 'Onion',imagePath: 'give image path',price: "Rs20/5kg"),
          Categorymodel(cat: "Fruits",name: 'Banana',imagePath: 'give image path',price: "Rs20/5kg")],
          Farmerkicrops: [{},{'Orange':'23/5kg'}]
          ),
  Farmermodel(
        name: "Harish Kumar",
        pic: 'gobhi.png',
        farmercroplist: [
          Categorymodel(cat: "Fruits",name: 'Orange',imagePath: 'give image path',price: "Rs20/5kg"),
          Categorymodel(cat: "Vegetables", name: "Gobhi", imagePath: "",price: "Rs20/5kg"),
          Categorymodel(cat: "Fruits",name: 'Banana',imagePath: 'give image path',price: "Rs20/5kg") ],
          Farmerkicrops: [{'Gobhi':'20/5kg'},{'Orange':'13/5kg'}]),
  
  ];



class _FarmerListState extends State<FarmerList> {
  late String crop;
  late String cat;
   List<Farmermodel>newlist=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cat=widget.cat;
    crop=widget.crop;
   newlist=SearchByCrop(farmer:farmers, crop: crop, cat: cat );
    log("newlist:$newlist");

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body:Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount:newlist.length ,
          itemBuilder:(context,index)
          {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading:CircleAvatar(child: Image.asset(
                "assets/images/${newlist[index].pic!}")) ,
                title: displaytxt(s: newlist[index].name,fw: FontWeight.bold,fs: 18),
                subtitle: Column(
                  children: [
                    displaytxt(s: crop),
                    (cat=="Vegetables")?displaytxt(s:newlist[index].Farmerkicrops[0][crop]):displaytxt(s:newlist[index].Farmerkicrops[1][crop]),
                  ],
                ),
                
                trailing: Icon(FontAwesomeIcons.chevronRight,size: 20,),
                hoverColor: blue,
                dense: true,
                
                tileColor: green,
                horizontalTitleGap:5 ,
                minLeadingWidth: 10,
                iconColor: white,
                subtitleTextStyle:const TextStyle(color: white,inherit: true,letterSpacing: 1),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),
            );
          }),
      ) ,
    );
  }
}
