import 'package:flutter/material.dart';
import 'package:flutter_application_1/Uicomponent/helpful.dart';
import 'package:flutter_application_1/Uicomponent/textandbuttons.dart';
import 'package:flutter_application_1/pages/loginpg.dart';
import 'package:flutter_application_1/pages/signup_as_farmer.dart';
import 'package:flutter_application_1/pages/signup_as_merchant.dart';

class LoginSignup extends StatelessWidget {
  final Size size;
  final String user;
   const LoginSignup({super.key,required this.size, required this.user});

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
              image: const DecorationImage(
              image:AssetImage("assets/images/ganeshji.JPG"),
              fit: BoxFit.contain
              )
            ),
          ),
          const SizedBox(height: 20,),
            InkWell(child: button(size: size,text:  "Log In",color:  green),
            
            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context){
              return  Loginpg(user: user,);
            })),
            ),
            const SizedBox(height: 15,),
            InkWell(child: button(size: size,text:  "Sign Up",color:  white),
            
            onTap: () => {
              if(user=="Merchant")
              {Navigator.push(context,MaterialPageRoute(builder: (context){
              return  SignUppg(user: user,);
            })),}
            else
            {
              Navigator.push(context,MaterialPageRoute(builder: (context){
              return const SignUppgFarm();
            }))
            }
            }
            ),
          displaytxt(s: "Or"),
           const Divider(
            height: 15,
            thickness: 1,
            indent: 15,
            endIndent: 15,
           ),
           
           Googlebutton(size),
           const SizedBox(height: 8,),
           facebookbutton(size)
          ],
        ),
      )
      ),
    );
  }
}