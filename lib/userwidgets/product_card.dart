import 'package:flutter/material.dart';
import 'package:flutter_application_1/Uicomponent/helpful.dart';
import 'package:flutter_application_1/pages/displayFarmerlist.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'product_section.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final String title;

  const ProductCard({Key? key, required this.product, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 170,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: black),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.09),
              blurRadius: 10,
              offset: const Offset(10, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 147,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/${product.name.toLowerCase()}.png',
                  width: 120,
                  height: 120,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                product.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
             
          ],
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return FarmerList( cat: title, crop:product.name);
        }));
      },
    );
  }
}