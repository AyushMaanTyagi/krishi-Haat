import 'package:flutter_application_1/Models/CategoryModel.dart';

class Farmermodel {
  String name; // this is farmer name
  String? pic; // this is farmer's profile picture
  List<Categorymodel>
      farmercroplist; // this list contains all the crops harvested by farmer and uploaded on our app to sell

  // Categorymodel??
  // Categorymodel is any vegetable,fruit or edible item sold by farmer
  // Categorymodel kind of DataType which stores the properties of particular item and it contains general attributes like
  // like -> name of item, picture of item, price of item set by farmer, and the category in which that item lies.
  // Example ->Categorymodel gobhiByfarmer_Ramesh Categorymodel(cat: "vegetable",name: 'Gobhi',imagePath: 'assets/gobhi.png',price:'20Rs/5Kg')

  // List<Categorymodel>
  // This list contains all the edible item sold by particular farmer

  Farmermodel(
      {required this.farmercroplist, required this.name, required this.pic,required this.Farmerkicrops});

  

  // How to access this list to pass its values as parameter in app ui?
  // ex. farmers[0].name=Ramesh Kumar
  // farmers[0].farmercroplist[0].name=Gobhi

  // Map<String, dynamic>toMap()
  // {
  //   return {
  //     "name":name,
  //     "pic":pic,
  //   };
  // }
  List<Map<dynamic,dynamic>>Farmerkicrops=[{'Gobhi':'20/5kg','Onion':'30/5kg','Banana':'12/3dozen'},{'Orange':'13/5kg'}];
 
}
