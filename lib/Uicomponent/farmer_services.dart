import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/CategoryModel.dart';
import 'package:flutter_application_1/Models/farmerModel.dart';
import 'package:flutter_application_1/Uicomponent/helpful.dart';
import 'package:flutter_application_1/Uicomponent/textandbuttons.dart';
class Services extends StatefulWidget {
 final Farmermodel farmermodel;
 final Size size;
  const Services({super.key, required this.farmermodel, required this.size});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
late List<Categorymodel>category=widget.farmermodel.farmercroplist;
TextEditingController quant=TextEditingController();
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    quant.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return
        SizedBox.expand(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: category.length,
            itemBuilder: (context,index)=>Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                //tileColor: grey,

                minTileHeight: 90,
                leading: Container(child: Image.asset("assets/images/onion.png",width: widget.size.width*0.5,height: widget.size.height*0.3,),
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: grey,borderRadius: BorderRadius.circular(12)),
                ),
                minLeadingWidth: 2,
                trailing: SizedBox(
                  width: widget.size.width*0.4,
                  height: widget.size.height*0.05,
                  child: Textfield(value: quant)),
              ),
            )),
            );
    }
}