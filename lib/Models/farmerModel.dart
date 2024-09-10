import 'package:flutter_application_1/Models/CategoryModel.dart';

class Farmermodel {
  String? uid;
  String? name; // this is farmer name
  String? pic; // this is farmer's profile picture
  String? pass;
  String? email;
  List<Categorymodel>?
      farmercroplist; // this list contains all the crops harvested by farmer and uploaded on our app to sell

  // Categorymodel??
  // Categorymodel is any vegetable,fruit or edible item sold by farmer
  // Categorymodel kind of DataType which stores the properties of particular item and it contains general attributes like
  // like -> name of item, picture of item, price of item set by farmer, and the category in which that item lies.
  // Example ->Categorymodel gobhiByfarmer_Ramesh Categorymodel(cat: "vegetable",name: 'Gobhi',imagePath: 'assets/gobhi.png',price:'20Rs/5Kg')

  // List<Categorymodel>
  // This list contains all the edible item sold by particular farmer

  Farmermodel(
      {required this.uid,required this.farmercroplist,required this.pass ,required this.name, required this.pic,required this.Farmerkicrops,required this.email});

  Farmermodel.fromMap(Map<String, dynamic>map)
  {
    uid=map['uid'];
    name=map['name'];
    email=map['email'];
    pass=map['pass'];
    pic=map['pic'];
    farmercroplist=map['farmercroplist'];
  }


 


  // How to access this list to pass its values as parameter in app ui?
  // ex. farmers[0].name=Ramesh Kumar
  // farmers[0].farmercroplist[0].name=Gobhi

  
  List<Map<dynamic,dynamic>>?Farmerkicrops=[{'Gobhi':'20/5kg','Onion':'30/5kg','Banana':'12/3dozen'},{'Orange':'13/5kg'}];
 
}
