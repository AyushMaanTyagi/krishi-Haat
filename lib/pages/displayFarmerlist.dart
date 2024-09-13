import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_1/Models/CategoryModel.dart';
import 'package:flutter_application_1/Models/farmerModel.dart';
import 'package:flutter_application_1/Uicomponent/helpful.dart';
import 'package:flutter_application_1/Uicomponent/searchfarmer.dart';
import 'package:flutter_application_1/Uicomponent/textandbuttons.dart';
import 'package:flutter_application_1/userwidgets/app_bar.dart';
import 'package:flutter_application_1/userwidgets/framerprofile.dart';
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
        pic: 'assets/images/gobhi.png',
        uid: "",
        pass: "",
        email: "",
        farmercroplist: [
          Categorymodel(cat: "Vegetables",name: 'Gobhi',imagePath: 'give image path',price: "Rs20/5kg"),
          Categorymodel(cat: "Vegetables",name: 'Onion',imagePath: 'give image path',price: "Rs20/5kg")
        ],
        Farmerkicrops: [{'Gobhi':'20/5kg','Onion':'30/5kg'},{'Banana':'12/3dozen','Orange':'13/5kg'}]
        ),
    Farmermodel(
        name: "Mohan Lal",
        uid: "",
        pass: "",
        email: "",
        farmercroplist: [
          Categorymodel(cat: "Fruits", name: "Banana", imagePath: "",price: "Rs20/5kg"),
          Categorymodel(cat: "Vegetables", name: "Gobhi", imagePath: "",price: "Rs20/5kg"),
          Categorymodel(cat: "Fruits", name: "Orange", imagePath: "",price: "Rs20/5kg"),
          Categorymodel(cat: "Vegetables", name: "Onion", imagePath: "",price: "Rs20/5kg"),
        ],
        pic: 'assets/images/banana.png',
        Farmerkicrops: [{'Gobhi':'18/5kg','Onion':'27/5kg'},{'Banana':'11/3dozen','Orange':'14/5kg'}]
        ),

        Farmermodel(
        name: "Ramesh Kumar",
        pic: 'assets/images/gobhi.png',
        uid: "",
        pass: "",
        email: "",
        farmercroplist: [
          Categorymodel(cat: "Fruits",name: 'Orange',imagePath: 'give image path',price: "Rs20/5kg"),
          Categorymodel(cat: "Fruits",name: 'Banana',imagePath: 'give image path',price: "Rs20/5kg"),],
          Farmerkicrops: [{'Gobhi':'22/5kg','Onion':'19/5kg'},{}]
          ),
        Farmermodel(
        name: "Mahesh Kumar",
        pic: 'assets/images/gobhi.png',
        uid: "",
        pass: "",
        email: "",
        farmercroplist: [
          Categorymodel(cat: "Fruits",name: 'Orange',imagePath: 'give image path',price: "Rs20/5kg"),
          Categorymodel(cat: "Vegetables", name: "Gobhi", imagePath: "",price: "Rs20/5kg"),
          Categorymodel(cat: "Fruits",name: 'Banana',imagePath: 'give image path',price: "Rs20/5kg")],
          Farmerkicrops: [{},{'Banana':'13/5kg','Orange':'18/kg'}]),
  Farmermodel(
        name: "Virendra Kumar",
        pic: 'assets/images/gobhi.png',
        uid: "",
        pass: "",
        email: "",
        farmercroplist: [
          Categorymodel(cat: "Fruits",name: 'Orange',imagePath: 'give image path',price: "Rs20/5kg"),
          Categorymodel(cat: "Vegetables",name: 'Onion',imagePath: 'give image path',price: "Rs20/5kg"),
          Categorymodel(cat: "Fruits",name: 'Banana',imagePath: 'give image path',price: "Rs20/5kg")],
          Farmerkicrops: [{},{'Orange':'23/5kg'}]
          ),
  Farmermodel(
        name: "Harish Kumar",
        pic: 'assets/images/gobhi.png',
        uid: "",
        pass: "",
        email: "",
        farmercroplist: [
          Categorymodel(cat: "Fruits",name: 'Orange',imagePath: 'give image path',price: "Rs20/5kg"),
          Categorymodel(cat: "Vegetables", name: "Gobhi", imagePath: "",price: "Rs20/5kg"),
          Categorymodel(cat: "Fruits",name: 'Banana',imagePath: 'give image path',price: "Rs20/5kg") ],
          Farmerkicrops: [{'Gobhi':'20/5kg'},{'Orange':'13/5kg'}]),
          Farmermodel(
        name: "Harish Kumar",
        pic: 'assets/images/gobhi.png',
        uid: "",
        pass: "",
        email: "",
        farmercroplist: [
          Categorymodel(cat: "Fruits",name: 'Orange',imagePath: 'give image path',price: "Rs20/5kg"),
          Categorymodel(cat: "Vegetables", name: "Gobhi", imagePath: "",price: "Rs20/5kg"),
          Categorymodel(cat: "Fruits",name: 'Banana',imagePath: 'give image path',price: "Rs20/5kg") ],
          Farmerkicrops: [{'Gobhi':'20/5kg'},{'Orange':'13/5kg'}]),
          Farmermodel(
        name: "Harish Kumar",
        pic: 'assets/images/gobhi.png',
        uid: "",
        pass: "",
        email: "",
        farmercroplist: [
          Categorymodel(cat: "Fruits",name: 'Orange',imagePath: 'give image path',price: "Rs20/5kg"),
          Categorymodel(cat: "Vegetables", name: "Gobhi", imagePath: "",price: "Rs20/5kg"),
          Categorymodel(cat: "Fruits",name: 'Banana',imagePath: 'give image path',price: "Rs20/5kg") ],
          Farmerkicrops: [{'Gobhi':'20/5kg'},{'Orange':'13/5kg'}]),
          Farmermodel(
        name: "Harish Kumar",
        pic: 'assets/images/gobhi.png',
        uid: "",
        pass: "",
        email: "",
        farmercroplist: [
          Categorymodel(cat: "Fruits",name: 'Orange',imagePath: 'give image path',price: "Rs20/5kg"),
          Categorymodel(cat: "Vegetables", name: "Gobhi", imagePath: "",price: "Rs20/5kg"),
          Categorymodel(cat: "Fruits",name: 'Banana',imagePath: 'give image path',price: "Rs20/5kg") ],
          Farmerkicrops: [{'Gobhi':'20/5kg'},{'Orange':'13/5kg'}]),
          Farmermodel(
        name: "Harish Kumar",
        pic: 'assets/images/gobhi.png',
        uid: "",
        pass: "",
        email: "",
        farmercroplist: [
          Categorymodel(cat: "Fruits",name: 'Orange',imagePath: 'give image path',price: "Rs20/5kg"),
          Categorymodel(cat: "Vegetables", name: "Gobhi", imagePath: "",price: "Rs20/5kg"),
          Categorymodel(cat: "Fruits",name: 'Banana',imagePath: 'give image path',price: "Rs20/5kg") ],
          Farmerkicrops: [{'Gobhi':'20/5kg'},{'Orange':'13/5kg'}]),
          Farmermodel(
        name: "Hrish Kumar",
        pic: 'assets/images/gobhi.png',
        uid: "",
        pass: "",
        email: "",
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
      body:SizedBox(
        width: size.width,
        height: size.height,
          //const App_Bar(text: "farmers available"),
          child:   Column(
            children: [
              App_Bar(text: "Available Farmers"),
              Expanded(
                child: ListView.builder(
                  //shrinkWrap: true,
                  itemCount: newlist.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context,index)
                  {
                    return Container(
                      height: size.height*0.1,
                      width: size.width*0.01,
                      margin: const EdgeInsets.all(3.0),
                      padding:EdgeInsets.symmetric(vertical: 6) ,
                      decoration:  BoxDecoration(
                      color: white,
                      border: Border.all(color: black),
                      borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(child:Image.asset(newlist[index].pic!),radius: 40,),
                (cat=="Vegetables")?displaynameAndPrice(newlist[index].name!, newlist[index].Farmerkicrops![0][crop]):displaynameAndPrice(newlist[index].name!, newlist[index].Farmerkicrops![1][crop]),
                          InkWell(child: Icon(FontAwesomeIcons.chevronRight,size: 15,),
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return FarmerProfile(size: size, farmermodel: newlist[index]);
                          })),
                          )
                        ],
                      ),
                    );
                  }),
              ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: button( color:white ,text:'Go to checkout',size:size),
                )
            ],
          ),
        )
      );
  }
}
