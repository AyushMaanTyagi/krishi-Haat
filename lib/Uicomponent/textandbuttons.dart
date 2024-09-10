import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Uicomponent/helpful.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
Text displaytxt({required String s,FontWeight? fw, double? fs,Color? color})
{
  return Text(s,style: TextStyle(color: color,fontSize: fs,fontWeight:fw ),textAlign:TextAlign.center,);
}

Widget button({required Size size,required String text, required Color color})
{
  return Container(
    width: (size.width>500)?size.width*0.5:size.width*0.8,
    height: (size.width>500)?size.height*0.09:size.height*0.07,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
      border: (color==white)?Border.all(color:green):null
    ),
    child: Center(
      child: Text(text,style: TextStyle(
        fontSize: 15,
        color:(color==green)?white:green) ,
      textAlign: TextAlign.center,
      ),
    ),
  );
}

Widget Inputfile({label="value",obscureText=false,TextEditingController? controller,required String hintText})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:<Widget> 
    [
      Text(label,style: const TextStyle(
        fontSize: 15,
        fontWeight:FontWeight.normal ,
        color: black
      ),),
      const SizedBox(height: 5,),

      TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: grey,fontWeight: FontWeight.w400),
          contentPadding: const EdgeInsets.symmetric(horizontal:10 , vertical:0 ),
        enabledBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: grey
          ),
        ),
        border: const OutlineInputBorder(
        borderSide: BorderSide(color: grey)
        )
        ),
        
      ),
      const SizedBox(height: 10,)
    ],
  );
}


Widget Googlebutton(Size size)
{
  return Container(
    width: (size.width>500)?size.width*0.5:size.width*0.8,
    height: (size.width>500)?size.height*0.07:size.height*0.05,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border:Border.all(color: grey)
    ),
    child:const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(FontAwesomeIcons.google,color: Colors.red,),
        SizedBox(width: 15,),
        Text("Continue with Google")
      ],
    ),
  );
}

Widget facebookbutton(Size size)
{
  return Container(
    width: (size.width>500)?size.width*0.5:size.width*0.8,
    height: (size.width>500)?size.height*0.07:size.height*0.05,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border:Border.all(color: grey)
    ),
 
    child:const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(FontAwesomeIcons.facebook,color: blue,),
        SizedBox(width: 15,),
        Text("Continue with Facebook")
      ],
    ),
  );
}
TextField Textfield({required TextEditingController value}) {
    return TextField(
                  controller: value,
                  decoration: InputDecoration(
                  hintText: "enter quantity in kg",
                ),
                keyboardType: TextInputType.number,
                );
}

getScaffold(String msg,BuildContext context, Color color)
{
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg),
  backgroundColor: color,
  ));
}

Widget displaynameAndPrice(String name, String price)
{
  return
  Column(
    children: [
      displaytxt(s: name,fs: 20,color: black2),
      displaytxt(s: price,fs: 18,color: black,fw: FontWeight.w900)
    ],
  );
}
