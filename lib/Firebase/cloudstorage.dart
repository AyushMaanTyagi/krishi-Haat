import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_application_1/Firebase/userdetails.dart';

class StorageMethods{
  final FirebaseAuth _auth;
  StorageMethods(this._auth);

  Future<void>uploadFarmerData(FarmerDetails farmerdetails, UserCredential cred) async
  {
    await FirebaseFirestore.instance
    .collection("farmers")
    .doc(cred.user?.uid)
    .set(farmerdetails.getfarmerDetailsMap());
  }

  Future<void>uploadMerchantData(MerchantDetails merchantdetails,UserCredential cred)async
  {
    await FirebaseFirestore.instance
    .collection("merchants")
    .doc(cred.user?.uid)
    .set(merchantdetails.getDetailsMap());
  }

}