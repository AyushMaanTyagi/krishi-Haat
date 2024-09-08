import 'package:flutter/material.dart';
import 'package:flutter_application_1/Uicomponent/helpful.dart';
import 'package:flutter_application_1/userwidgets/app_bar.dart';
import '../userwidgets/banner_carousel.dart';
import '../userwidgets/product_section.dart';
import '../userwidgets/bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: [
            App_Bar(text: "HOME PAGE"),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    BannerCarousel(),
                    ProductSection(
                      title: 'Fruits',
                      products: [
                        Product(name: 'Banana', price: '₹20/Dozen', rating: 4.8, reviews: 287),
                        Product(name: 'Orange', price: '₹25/kg', rating: 4.8, reviews: 287),
                        Product(name: 'Orange', price: '₹20/kg', rating: 4.8, reviews: 287),
                        Product(name: 'Orange', price: '₹15/kg', rating: 4.8, reviews: 287),
                        Product(name: 'Banana', price: '₹35/kg', rating: 4.8, reviews: 287),
                        Product(name: 'Banana', price: '₹30/kg', rating: 4.8, reviews: 287),
                        Product(name: 'Banana', price: '₹18/kg', rating: 4.8, reviews: 287),
                       // Product(name: 'Paw Paw', price: '₹22/kg', rating: 4.8, reviews: 287),
                      ],
                    ),
                    ProductSection(
                      title: 'Vegetables',
                      products: [
                        Product(name: 'Onion', price: '₹8/kg', rating: 4.8, reviews: 287),
                        Product(name: 'Gobhi', price: '₹15/kg', rating: 4.8, reviews: 287),
                        Product(name: 'Gobhi', price: '₹9/kg', rating: 4.8, reviews: 287),
                        Product(name: 'Onion', price: '₹11/kg', rating: 4.8, reviews: 287),
                        Product(name: 'Gobhi', price: '₹8/kg', rating: 4.8, reviews: 287),
                        Product(name: 'Onion', price: '₹10/kg', rating: 4.8, reviews: 287),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            BottomNavigation(),
          ],
        ),
      ),
    );
  }
}