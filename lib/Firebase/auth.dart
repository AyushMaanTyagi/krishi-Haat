// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Firebase/cloudstorage.dart';
import 'package:flutter_application_1/Firebase/details.dart';
import 'package:flutter_application_1/Firebase/userdetails.dart';
import 'package:flutter_application_1/Uicomponent/helpful.dart';
import 'package:flutter_application_1/Uicomponent/textandbuttons.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/login_signup.dart';
import 'package:flutter_application_1/pages/welcome.dart';

// void checkvalues( String email, String pass,  String cpass)
// {
//   if(email.trim()==""||pass.trim()==""||cpass=="")
//   {
//     log("please fill all the details");
//   }
//   else if(pass.trim()!=cpass.trim())
//   {
//     log("password do not match");
//   }
//   else
//   {
//     signup(email.trim(), pass.trim());
//   }
// }
// void signup(String email,String pass)async
// {

// }

class FarmerAuthorization {
  final FirebaseAuth _auth;
  final BuildContext context;
  final String email;
  final String pass;
  final String pic;
  final String uid;
  final String name;
  final List farmercroplist;

  FarmerAuthorization(
  this.email,
  this.pass,
  this.pic,
  this.uid,
  this.name,
  this.farmercroplist,
  this._auth,
  this.context);

  Future<void>signUpWithEmail()async 
  {
    try {
       UserCredential credential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: pass);
       StorageMethods storage=StorageMethods(_auth);
      
      FarmerDetails farmer= FarmerDetails(
        email,
        pass,
        pic,
        credential.user!.uid,
        name,
        farmercroplist,
      );
      await storage.uploadFarmerData(farmer, credential);
      await credential.user?.updateDisplayName("Farmer");
      //await credential.user?.updatePhotoURL(pic);
      getScaffold("Account successfully created",context , green);
      FarmerDetailsProvider().getfarmerdetails();
    Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const HomeScreen()),(Route<dynamic> route) => false);
    } 
    catch (e) 
    {
      getScaffold(e.toString(), context, Colors.red);
    }
  }

}

class MerchantAuthorization
{
  final FirebaseAuth _auth;
  final BuildContext context;
  final String email;
  final String pass;
  final String pic;
  final String name;
  final String address;

  MerchantAuthorization(
  this.email,
  this.pass,
  this.pic,
  this.name,
  this.address,
  this.context,
  this._auth
  );
  Future<void>signUpWithEmail()async
  {
    try {
      UserCredential credential=await _auth.createUserWithEmailAndPassword(email: email, password: pass);
      StorageMethods storage=StorageMethods(_auth);
     MerchantDetails merchant= MerchantDetails(
        credential.user!.uid,
         address,
         email,
         pic,
         name,
         pass);

         storage.uploadMerchantData(merchant, credential);
         credential.user?.updateDisplayName("Merchant");
         getScaffold("Account successfully created",context , green);
         MerchantDetailsProvider().getmerchantdetails();
         Navigator.of(context).pushAndRemoveUntil(
         MaterialPageRoute(builder: (context) => const HomeScreen()),(Route<dynamic> route) => false);

    } catch (e) 
    {
      getScaffold(e.toString(), context, Colors.red);
      
    }
  }


}

class LoginMethod
{
  final BuildContext context;
  final FirebaseAuth _auth;
  PageController _pageController=PageController();
  
  LoginMethod(this.context, this._auth);

  Future<String?>loginUser(String email,String password) async
  {
    try {
      UserCredential credential=await _auth.signInWithEmailAndPassword(email: email, password: password);
      String displayName=credential.user!.displayName!.trim();
      if(displayName=="") {
        log("null credential");
      } else {
        log(displayName);
      }
      displayName=="Merchant"
      ? await MerchantDetailsProvider().getmerchantdetails()
      :FarmerDetailsProvider().getfarmerdetails();
      return displayName;
    } catch (e) {
      getScaffold(e.toString(), context, Colors.red);
      return "false";
    }
  }

  void someFunction() {
  
  if (_pageController.hasClients) {
    // Now it's safe to access pageController.page
    double? currentPage = _pageController.page;
    print('Current Page: $currentPage');
  } else {
    print('PageView has not been built yet');
  }
}


  Future<void>logout()async
  {
    try {
      log("who is loggig out:${_auth.currentUser?.displayName}");
      String? displayName=_auth.currentUser!.displayName!.trim();
      await _auth.signOut();
      // Navigator.of(context).pushAndRemoveUntil(
      // CupertinoPageRoute(builder: (context){return const Welcome();}),
      // (Route<dynamic>route)=>false);
      Navigator.of(context).pushAndRemoveUntil(
      CupertinoPageRoute(builder: (context) => const Welcome()),
      (Route<dynamic> route) => false);
      getScaffold("Logged Out", context, green);
    } catch (e) {
      getScaffold("try after some time", context,Colors.red.shade400);
    }
  }
  
}
