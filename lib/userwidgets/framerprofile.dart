import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/farmerModel.dart';
import 'package:flutter_application_1/Uicomponent/farmer_services.dart';
import 'package:flutter_application_1/Uicomponent/helpful.dart';
import 'package:flutter_application_1/Uicomponent/textandbuttons.dart';
import 'package:flutter_application_1/userwidgets/app_bar.dart';

class FarmerProfile extends StatefulWidget {
  final Size size;
  final Farmermodel farmermodel;
  const FarmerProfile({super.key, required this.size, required this.farmermodel});
  

  @override
  State<FarmerProfile> createState() => _FarmerProfileState();
}

class _FarmerProfileState extends State<FarmerProfile> with TickerProviderStateMixin {
  List<String> itemlist = ["services", "reviews", "about", "view product"];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: itemlist.length, vsync: this);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          children: <Widget>[
            App_Bar(text: "Farmer's Profile"),
            Container(
              height: widget.size.height / 4,
              width: double.infinity,
              color: Colors.blue, // use farmer name here
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Center(child: displaytxt(s: widget.farmermodel.name!,fs: 20,color: white)),
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TabBar(
                controller: tabController,
                isScrollable: false,
                indicator: BoxDecoration(color: green,
                borderRadius: BorderRadius.circular(12)), // Customize the indicator color
                labelPadding: EdgeInsets.symmetric(horizontal: 10),
                tabs: List.generate(itemlist.length, (index) {
                  return Center(
                    child: Text(
                      itemlist[index],
                      style: TextStyle(
                        fontSize: 15,
                        color:  Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
                }),
              ),
            ),

               SizedBox(
                 width: double.infinity,
                 height: widget.size.height*0.55,
                 child: Expanded(
                   child:
                     TabBarView(
                      controller: tabController,
                      children:<Widget>[
                        Center(child: Services(farmermodel: widget.farmermodel, size: widget.size,)), // Assuming this is your custom widget
                       
                        // Center(child: Text("Reviews")), // Customize your tabs here
                        Center(child: Text("Reviews")), // Customize your tabs here
                        Center(child: Text("About")),
                        Center(child: Text("View Product")),
                      ],
                  ),
                 ),
               ),
          ],
        ),
      ),
    );
  }
}
