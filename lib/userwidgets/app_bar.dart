import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class App_Bar extends StatelessWidget {
  final String text;
  const App_Bar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      color: Colors.white,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children:[
              const SizedBox(width: 10),
              Text(text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 10),
              Icon(FontAwesomeIcons.chevronDown,size: 14.0,)
              //SvgPicture.asset('assets/icons/arrow_down.svg', width: 24, height: 24),
            ],
          ),
          //SvgPicture.asset('assets/icons/notification.svg', width: 24, height: 24),
        ],
      ),
    );
  }
}