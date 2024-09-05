import 'package:flutter/material.dart';
import 'package:flutter_application_1/Uicomponent/helpful.dart';
import 'package:flutter_application_1/Uicomponent/text.dart';
import 'package:flutter_application_1/pages/signup.dart';
class Loginpg extends StatefulWidget {
 const Loginpg({super.key});

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
          icon: Icon(Icons.arrow_back_ios,color: white,size: 20,),),
        backgroundColor:green ,
        title: Text("Log In",style: TextStyle(color: white),),
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
            onTap: () => 0,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                displaytxt(s: "Don't have an account?"),
                InkWell(child: displaytxt(s: "Register",color: blue),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SignUppg();
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