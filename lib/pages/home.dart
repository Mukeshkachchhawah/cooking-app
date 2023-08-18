import 'package:cooking_food/pages/bottom_bar.dart';
import 'package:cooking_food/recipe.dart/breakfast.dart';
import 'package:flutter/material.dart';

import '../custom_widets/custom_drawer.dart';
import '../custom_widets/custom_recipes.dart';
import '../custom_widets/listtile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 8, 31, 49),
          title: Text("Cooking Recipe App"),
        //  actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        drawer: CutomDrower(),
        bottomNavigationBar: Bottom_Bar(),
        backgroundColor: Color.fromARGB(255, 8, 31, 49),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                searchButton(),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Custom_Recipes(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BreakFast()));
                    },
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Widget searchButton() {
    return Card(
      child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: CustomListTile(
            ldicons: Icon(Icons.search),
            ontab: () {},
            textValue: "Search any recipes",
          )),
    );
  }
}
