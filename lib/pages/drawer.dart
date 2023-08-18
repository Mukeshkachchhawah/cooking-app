import 'package:flutter/material.dart';


class Drawer_Page extends StatelessWidget {
  const Drawer_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       
        width: double.infinity,
        color: Colors.yellow,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.read_more),
            title: Text("data"),
          )
        ],
      ),
      ),
    );
  }
}