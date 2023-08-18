import 'package:flutter/material.dart';

import 'listtile.dart';

Widget CutomDrower() {
  return Drawer(
    //  backgroundColor: Colors.red,
    child: Column(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image:
                  DecorationImage(image: AssetImage("assets/images/login.png"))
              //color: Colors.black
              ),
        ),
        CustomListTile(
          ldicons: Icon(Icons.home),
          textValue: "Home",
          tlicons: Icon(Icons.arrow_forward),
          ontab: () {},
        ),
        CustomListTile(
          ldicons: Icon(Icons.color_lens_rounded),
          textValue: "Theme",
          tlicons: Icon(Icons.light_mode),
          ontab: () {},
        ),
          CustomListTile(
          ldicons: Icon(Icons.favorite),
          textValue: "Favorite",
          tlicons: Icon(Icons.arrow_forward),
          ontab: () {},
        ),
         CustomListTile(
          ldicons: Icon(Icons.settings),
          textValue: "Setting",
          tlicons: Icon(Icons.arrow_forward),
          ontab: () {},
        ),
         CustomListTile(
          ldicons: Icon(Icons.bookmarks),
          textValue: "About us",
          tlicons: Icon(Icons.arrow_forward),
          ontab: () {},
        ),
          CustomListTile(
          ldicons: Icon(Icons.help),
          textValue: "Help",
          tlicons: Icon(Icons.arrow_forward),
          ontab: () {},
        ),
         CustomListTile(
          ldicons: Icon(Icons.logout_outlined),
          textValue: "Sign Out",
          tlicons: Icon(Icons.arrow_forward),
          ontab: () {},
        ),
      ],
    ),
  );
}
