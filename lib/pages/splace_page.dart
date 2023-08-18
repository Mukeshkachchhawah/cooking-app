import 'dart:async';

import 'package:cooking_food/pages/home.dart';
import 'package:cooking_food/user_account/login.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../home_desbord.dart';
import '../user_account/sign_up.dart';

const String UserKey = "Login";

class Splace_Screens extends StatefulWidget {
  const Splace_Screens({super.key});

  @override
  State<Splace_Screens> createState() => _Splace_ScreensState();
}

class _Splace_ScreensState extends State<Splace_Screens> {
  void initState() {
    super.initState();
    /*  Timer(Duration(seconds: 5), () {

      //// add pageTransition packages ////
      Navigator.pushReplacement(context, PageTransition(child: Home_DesBord(), type: PageTransitionType.bottomToTop,duration: Duration(seconds: 2)));
     
    }
    
    ); */

    addSharedPref();
  }

  addSharedPref() async {
    var pref = await SharedPreferences.getInstance();
    var isLogin = pref.getBool(UserKey);

    Timer(Duration(milliseconds: 5), () {
      if (isLogin != null) {
        if (isLogin) {
          Navigator.pushReplacement(
              context,
              PageTransition(
                  child: HomePage(),
                  type: PageTransitionType.bottomToTop,
                  duration: Duration(seconds: 2)));
        } else {
          Navigator.pushReplacement(
              context,
              PageTransition(
                  child: Login(),
                  type: PageTransitionType.bottomToTop,
                  duration: Duration(seconds: 2)));
        }
      } else {
        Navigator.pushReplacement(
            context,
            PageTransition(
                child: Sign_Up(),
                type: PageTransitionType.bottomToTop,
                duration: Duration(seconds: 2)));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Image.network(
                "https://cdn.pixabay.com/photo/2017/10/27/10/49/cook-2893904_1280.png",
                scale: 4,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
