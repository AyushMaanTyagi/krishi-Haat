import 'package:flutter/material.dart';
import 'package:flutter_application_1/Uicomponent/helpful.dart';
import 'package:flutter_application_1/Uicomponent/text.dart';
import 'package:flutter_application_1/pages/login_signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: white,
      body: Container(
        width: double.infinity,
        height: size.height,
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.03, vertical: size.height * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: size.height / 3,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/space.jpg"),
              )),
            ),
            Column(
              children: [
                displaytxt(s:"Explore now \nto experience the benefits",
                  fw:   FontWeight.bold,fs:  18),
                const SizedBox(
                  height: 10,
                ),
                displaytxt(
                  s:"Your ultimate companion for reducing all the hustles of selling and buying quality  produce directly from the farms.",
                  fw:   FontWeight.normal,
                  fs:   13)
              ],
            ),
            Column(
              children: <Widget>[
                InkWell(
                  child: button(size:  size,text:  "Merchant",color:  Colors.green),
                  onTap: () => {
                    Navigator.push(context,MaterialPageRoute(builder: (context) {
                      return LoginSignup(size: size,);
                    }))
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: button(size:  size,text:  "Farmer",color:  Colors.white),
                  onTap: () => {
                    Navigator.push(context,MaterialPageRoute(builder: (context) {
                      return LoginSignup(size: size,);
                    }))
                  },
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
