import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Firebase/auth.dart';
import 'package:flutter_application_1/Uicomponent/helpful.dart';
import 'package:flutter_application_1/Uicomponent/textandbuttons.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/signup_as_merchant.dart';
class Loginpg extends StatefulWidget {
  final String user;
 const Loginpg({super.key, required this.user});

  @override
  State<Loginpg> createState() => _LoginpgState();
}

class _LoginpgState extends State<Loginpg> {
  final TextEditingController emailC =TextEditingController();
  final TextEditingController passC =TextEditingController();
  
@override
  void dispose() {
    super.dispose();
    emailC.dispose();
    passC.dispose();

  }
  bool? ischecked=false;
  @override
  Widget build(BuildContext context) {
 final Size size=MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: white,
      appBar: AppBar(
        leading: IconButton(
          onPressed:() => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios,color: white,size: 20,),),
        backgroundColor:green ,
        title: const Text("Log In",style: TextStyle(color: white),),
        centerTitle: true,
        ),
      body: SafeArea(
      child: Padding(
        padding:  EdgeInsets.all(size.width*0.08),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:<Widget> 
          [
            SizedBox(height: size.width*0.1,),
            Inputfile(label: "Email",controller: emailC,hintText:  "Text your email"),
            Inputfile(label: "Password",controller: passC,obscureText: true,hintText: "Text your password"),
            SizedBox(height: size.width*0.04,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>
              [
                Row(
                  children: [
                    Checkbox(value: ischecked,
                    activeColor: green ,
                    onChanged: (newvalue){
                      setState(() {
                        ischecked=newvalue;
                      });
                    }),
                    displaytxt(s: "Remember me",color: black),
                  ],
                ),
                
                displaytxt(s: "Forgot password?")
        
              ],
            ),
            InkWell(child: button(size: size, text: "Log In", color: green),
            onTap: () async 
            {
              if(emailC.text.trim()==""||passC.text.trim()=="")
              {
                getScaffold("Please fill all the details", context, Colors.red.shade400);
              }
              else
              {
               String? isLoggedIn =await LoginMethod(context, FirebaseAuth.instance)
               .loginUser(emailC.text.trim(), passC.text.trim());

               if(isLoggedIn=="Farmer" && widget.user=="Farmer")
               {
                
                getScaffold("Successfully Logged In", context, green);
                Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                builder: (context) =>
                HomeScreen()),(Route<dynamic> route) => false);
               }
               else if(isLoggedIn=="Merchant" && widget.user=="Merchant")
               {
                getScaffold("Successfully Logged In", context, green);
                Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                builder: (context) =>
                HomeScreen()),(Route<dynamic> route) => false);
               }
               else
               {
                log("Invalid Credential");
               }
              }

            }
            ),
            SizedBox(height: size.width*0.08,),
            displaytxt(s: "Or"),
           const Divider(
            height: 15,
            thickness: 1,
            indent: 15,
            endIndent: 15,
           ),
            Googlebutton(size),
            SizedBox(height: size.height*0.03,),
            facebookbutton(size),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                displaytxt(s: "Don't have an account?"),
                InkWell(child: displaytxt(s: "Register",color: blue),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return  SignUppg(user:widget.user,);
                  }));
                },)
              ],
            )
          ],
        
        ),
      )
      ),
    );
  }
}