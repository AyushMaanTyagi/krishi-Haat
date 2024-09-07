import 'package:flutter/material.dart';
import 'package:flutter_application_1/Uicomponent/helpful.dart';
import 'package:flutter_application_1/Uicomponent/text.dart';
import 'package:flutter_application_1/pages/homepage.dart';
class SignUppg extends StatefulWidget {
 
 const SignUppg({super.key});

  @override
  State<SignUppg> createState() => _SignUppgState();
}

class _SignUppgState extends State<SignUppg> {
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
          icon: Icon(Icons.arrow_back_ios,color: white,size: 20,),),
        backgroundColor:green ,
        title: Text("Sign Up",style: TextStyle(color: white),),
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
            Inputfile(label: "Confirm Password",controller: passC,obscureText: true,hintText: "Text your password"),
            SizedBox(height: size.width*0.04,),
            
            InkWell(child: button(size: size, text: "Sign Up", color: green),
            onTap: () =>  Navigator.push(context,MaterialPageRoute(builder: (context){
              return HomeScreen();
            })),
            ),
            SizedBox(height: size.width*0.08,),
            displaytxt(s: "Or"),
           Divider(
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