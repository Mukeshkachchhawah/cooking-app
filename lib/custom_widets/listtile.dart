import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  String textValue;
///////////// ld icons = leading icon ////////////

  Icon ldicons;
///////////// tl icons = trailing icon ////////////

  Icon? tlicons= Icon(Icons.arrow_forward);
  ////////// OnTap /////////
  VoidCallback ontab;
  CustomListTile(
      {required this.textValue, required this.ldicons,  this.tlicons, required this.ontab});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      onTap: ontab,
      leading: ldicons,
      title: Text(textValue),
      trailing: tlicons,
    );
  }
}
