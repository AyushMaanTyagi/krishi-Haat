import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Firebase/auth.dart';
import 'package:flutter_application_1/Uicomponent/helpful.dart';
import 'package:flutter_application_1/Uicomponent/textandbuttons.dart';
import 'package:flutter_application_1/pages/homepage.dart';
class SignUppgFarm extends StatefulWidget {
 
 const SignUppgFarm({super.key});

  @override
  State<SignUppgFarm> createState() => _SignUppgFarmState();
}

class _SignUppgFarmState extends State<SignUppgFarm> {
  final TextEditingController emailC =TextEditingController();
  final TextEditingController passC =TextEditingController();
  final TextEditingController Cpass =TextEditingController();
  
@override
  void dispose() {
    super.dispose();
    emailC.dispose();
    passC.dispose();
    Cpass.dispose();

  }
  
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
        title: const Text("Sign Up",style: TextStyle(color: white),),
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
            Inputfile(label: "Confirm Password",controller: Cpass,obscureText: true,hintText: "Text your password"),
            SizedBox(height: size.width*0.04,),
            
            InkWell(child: button(size: size, text: "Sign Up", color: green),
            onTap: () =>  
            {
              if(emailC.text.trim()==""||passC.text.trim()==""||Cpass.text.trim()=="")
              {
                getScaffold("Please fill all the details", context, Colors.red.shade400)
              }  
              else if(passC.text.trim()!=Cpass.text.trim())
              {
                getScaffold("Passwords do not match", context, Colors.red.shade400)
              }
              else
              {
                FarmerAuthorization(
                  emailC.text.trim(),
                  passC.text.trim(), 
                  "Null pic", 
                  "Null Uid", 
                  "Null name", 
                   [], 
                  FirebaseAuth.instance, 
                  context).signUpWithEmail()
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
          ],
        
        ),
      )
      ),
    );
  }
}