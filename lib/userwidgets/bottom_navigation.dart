import 'package:flutter/material.dart';
import 'package:flutter_application_1/userwidgets/search.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatefulWidget {
  
  
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int press=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 20,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:<Widget> [
          InkWell(
            child: _NavItem(
              icon: Icons.home,
              label: 'Home',
              isActive:press==0? true:false,
            ),
            onTap: () {
              setState(() {
                press=0;
              });
            },
          ),
          InkWell(
            child: _NavItem(
              icon: Icons.shopping_cart,
              label: 'Cart',
              isActive: press==1?true:false,
            ),
            onTap: () {
              setState(() {
                press=1;
              });
              
            },
          ),
          InkWell(
            child: _NavItem(
              icon: Icons.search,
              label: 'Search',
              isActive: press==2?true:false,
            ),
            onTap:(){
              
              setState(() {
                press=2;
              });
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return Search();
              }));
            } ,
          ),
          InkWell(
            child: _NavItem(
              icon: Icons.person,
              label: 'Profile',
              isActive: press==3?true:false,
            ),
            onTap: () {
              setState(() {
                press=3;
              });
            },
          ),
          InkWell(
            child: _NavItem(
              icon: Icons.menu,
              label: 'Menu',
              isActive: press==4?true:false,
            ),
            onTap: () {
              setState(() {
                press=4;
              });
            },
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;

  const _NavItem({
    Key? key,
    required this.icon,
    required this.label,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: isActive ? Colors.green.shade700 : Colors.black,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
            color: isActive ? Colors.green.shade700 : Colors.black,
          ),
        ),
      ],
    );
  }
}