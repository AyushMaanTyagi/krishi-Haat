import 'dart:developer';

import 'package:flutter_application_1/Models/farmerModel.dart';

 List<Farmermodel>SearchByCrop({required List<Farmermodel>farmer,required String crop,required String cat})
  {
    List<Farmermodel>newlist=[];
    log("farmer:$farmer");
    log("crop:$crop and Cat:$cat");
    for (var givenFarmer in farmer) 
    {
      // for (var fooditem in givenFarmer.farmercroplist) 
      // {
      //   log("${fooditem.cat!},${fooditem.name!}");
      //   if(fooditem.cat!.compareTo(cat)==0 && fooditem.name!.compareTo(crop)==0)  
      //   {
      //     newlist.add(givenFarmer);
      //   }
      // }  

      if(cat=="Vegetables")
      {
        givenFarmer.Farmerkicrops[0].containsKey(crop)==true?newlist.add(givenFarmer):0;
      }
      else
      {
        givenFarmer.Farmerkicrops[1].containsKey(crop)==true?newlist.add(givenFarmer):0;
      }
    }
    log("newlist1:$newlist");
    return newlist;
  }