
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class FarmerDetailsProvider extends ChangeNotifier{
Map<String ,dynamic>? _farmerdetails;
Map<String, dynamic> get getFarmerdetails=>
_farmerdetails??
{
  "name":"",
  "pic":"",
  "email":"",
  "farmercroplist":[],
  "pass":"",
  "uid":"",
};

dynamic getfarmerdetails() async
{
  DocumentSnapshot snapshot= await FirebaseFirestore.instance
  .collection("farmers")
  .doc(FirebaseAuth.instance.currentUser!.uid)
  .get();

  _farmerdetails=snapshot.data() as Map<String,dynamic>;
  notifyListeners();
}

}

class MerchantDetailsProvider extends ChangeNotifier
{
  Map<String, dynamic>? _merchantdetailsmap;
  Map<String,dynamic> get getMerchantDetails=>
  _merchantdetailsmap??
  {
  "name":"",
  "pic":"",
  "email":"",
  "address":"",
  "password":"",
  "uid":"",
  };

  getmerchantdetails() async
  {
    DocumentSnapshot snapshot= await
    FirebaseFirestore.instance
    .collection("merchants")
    .doc(FirebaseAuth.instance.currentUser!.uid)
    .get();

    _merchantdetailsmap=snapshot.data() as Map<String ,dynamic>;
    notifyListeners();
  }

}