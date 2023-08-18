import 'package:cooking_food/pages/home.dart';
import 'package:cooking_food/user_account/login.dart';
import 'package:flutter/material.dart';

class Home_DesBord extends StatelessWidget {
  const Home_DesBord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.orange,

      body: Column(
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      //image: NetworkImage("https://thumbs.dreamstime.com/b/cute-girl-cooking-kitchen-listening-to-music-portrait-160819053.jpg"),
                      image: AssetImage("assets/images/cooking-kitchen-.jpg"),
                      //  opacity: 0.5,
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.only(top: 500, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Start \nCooking",
                      style: TextStyle(
                        shadows: [Shadow(blurRadius: 10,)],
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Savor unlimited healthy and tasty \nrecipes ever day!",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white,  shadows: [Shadow(blurRadius: 10,)],),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.yellow,width: 3),
                            borderRadius: BorderRadius.circular(20),
                           ),
                        child: Center(
                          child: Text(
                            "Register/Login",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w900, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow, width: 3),
                            borderRadius: BorderRadius.circular(20),
                           // color: Colors.white
                           ),
                        child: Center(
                          child: Text(
                            "Continue as gusest",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w900, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(child: Text("By using cooking app",  style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w900, color: Colors.white),))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
