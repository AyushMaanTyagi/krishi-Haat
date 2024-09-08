import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_1/Uicomponent/helpful.dart';

class BannerCarousel extends StatefulWidget {
   const BannerCarousel({super.key});

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

  final List<String>imagepath=["assets/images/space.jpg","assets/images/slider1.png","assets/images/slider2.png"];
  late List<Widget>slides;
  final PageController pageController=PageController(initialPage: 0);

  int isactive=0;
  Timer? timer;
class _BannerCarouselState extends State<BannerCarousel> {

void  startTimer()
{
  timer=Timer.periodic(const Duration(seconds: 2), (timer){
    if(pageController.page==imagepath.length-1)
    {
      pageController.animateToPage(0, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
    else
    {
      pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);

    }
  });
}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides=List.generate(imagepath.length, (index)=>SliderPlaceHolder(imagepath: imagepath[index],));
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
  
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height/4,
          child: PageView.builder(
            controller: pageController,
            onPageChanged: (value) => setState(() {
              isactive=value;
            }),
            itemCount: imagepath.length,
            itemBuilder: (context,index){
            return slides[index];
          }),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 10,
          child: Container(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:List<Widget>.generate(slides.length,
              (index)=>Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: CircleAvatar(radius: 4,backgroundColor:(isactive==index)? green:grey,),
              )),
            ),
          ),
        )
      ],
    );
  }
}

class SliderPlaceHolder extends StatelessWidget {
final String? imagepath;
  const SliderPlaceHolder({super.key,this.imagepath});
  @override
  Widget build(BuildContext context) {
    return Image.asset(imagepath!,fit: BoxFit.cover,);
  }
}