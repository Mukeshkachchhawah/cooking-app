import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Bottom_Bar extends StatelessWidget{
  
@override
  Widget build(BuildContext context) {
    // TODO: implement build
   // return CurvedAnimation(parent: parent, curve: curve)
   return CurvedNavigationBar(items: [
    Icon(Icons.home),
    Icon(Icons.cookie),
    Icon(Icons.account_box)
   ]);
  }
}