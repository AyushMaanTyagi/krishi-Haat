import 'package:flutter/material.dart';
import 'package:flutter_application_1/Uicomponent/helpful.dart';
import 'package:flutter_application_1/Uicomponent/text.dart';
import 'package:flutter_application_1/pages/loginpg.dart';
import 'package:flutter_application_1/pages/signup.dart';

class LoginSignup extends StatelessWidget {
  final Size size;
   const LoginSignup({super.key,required this.size});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: white,
      body: SafeArea(child: 
      Container(
        width: double.infinity,
        height: size.height,
        decoration: BoxDecoration(
          border: Border.all(color:green,width: 3.0,)
        ),
        padding: EdgeInsets.symmetric(horizontal: size.width*0.03,vertical: size.height*0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>
          [
            Container(
            width: double.infinity,
            height: size.height/2.8,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red,width: 2.0,style: BorderStyle.solid),
              image: DecorationImage(
              image:AssetImage("assets/images/ganeshji.JPG"),
              fit: BoxFit.contain
              )
            ),
          ),
          SizedBox(height: 20,),
            InkWell(child: button(size: size,text:  "Log In",color:  green),
            
            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context){
              return Loginpg();
            })),
            ),
            SizedBox(height: 15,),
            InkWell(child: button(size: size,text:  "Sign Up",color:  white),
            
            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context){
              return SignUppg();
            })),
            ),
          displaytxt(s: "Or"),
           Divider(
            height: 15,
            thickness: 1,
            indent: 15,
            endIndent: 15,
           ),
           
           Googlebutton(size),
           SizedBox(height: 8,),
           facebookbutton(size)
          ],
        ),
      )
      ),
    );
  }
}