import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class textfild_widget extends StatelessWidget {
  const textfild_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      decoration: InputDecoration(
        label: Text("Email"),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
    );
  }
}