import 'package:flutter/material.dart';
import 'package:flutter_application_1/Uicomponent/textandbuttons.dart';
import 'package:flutter_application_1/userwidgets/menueitems.dart';
import 'package:flutter_application_1/userwidgets/search.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:popover/popover.dart';

class BottomNavigation extends StatefulWidget {
  
  
  const BottomNavigation({super.key});

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
                return const Search();
              }));
            } ,
          ),
          InkWell(
            child: _NavItem(
              icon: Icons.chat,
              label: 'Chat AI',
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
              showPopover(context: context, bodyBuilder: (context)=>const Menueitems(),
              width: MediaQuery.of(context).size.width*0.3,
              height: MediaQuery.of(context).size.height*0.15
              
              );
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
    super.key,
    required this.icon,
    required this.label,
    this.isActive = false,
  });

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