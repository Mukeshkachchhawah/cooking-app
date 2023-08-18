import 'package:cooking_food/database/db_helper.dart';
import 'package:cooking_food/pages/home.dart';
import 'package:cooking_food/pages/splace_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'forget_passwrod.dart';
import 'sign_up.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  Login({
    super.key,
  });

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopContainer(),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Center(
                      child: Text(
                        "Wel-Come back",
                        style: TextStyle(
                            fontSize: 200 / 8, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Pleace enter your details to sign in.",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextField_Mid(),
                SizedBox(
                  height: 20,
                ),
                ForgetPassword(),
                SizedBox(
                  height: 20,
                ),
                TapLogin(context),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Sign_Up()));
                      },
                      child: Text("Sign-up"),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                divider(),
                SizedBox(
                  height: 28,
                ),
                OnlineLogin()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget TopContainer() {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Lottie.asset("assets/gif/login.json"),
    );
  }

  Widget TextField_Mid() {
    return Form(
      key: formkey,
      child: Column(
        children: [
          TextFormField(
            //  controller: emailController,
            validator: (value) {
              if (value == "" || !value!.contains("@")) {
                return "pleace enter valid email";
              } else {
                // show erro
              }
            },
            decoration: InputDecoration(
                label: Text("Email"),
                hintText: "Enter Your Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            validator: (value) {
              if (value == "" || value!.length < 6) {
                return "pleace enter 6 digit password";
              } else {
                // show erro
              }
            },
            //  controller: emailController,
            decoration: InputDecoration(
                label: Text("Password"),
                hintText: "Enter Your Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ],
      ),
    );
  }

  Widget ForgetPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Forget_Password(),
                  ));
            },
            child: Text(
              "Forget password?",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }

  Widget TapLogin(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (formkey.currentState!.validate()) {
          var check = await MyDBHelper().userAuthotication(
              email: emailController.text, password: passwordController.text);

          if (check) {
            var pref = await SharedPreferences.getInstance();
            pref.setBool(UserKey, true);
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
          } else {
            // show errow
          }
        }
      },
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.red),
        child: Center(
          child: Text(
            "Login",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget divider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 2,
          width: 130,
          color: Colors.black,
        ),
        SizedBox(
          width: 10,
        ),
        Text("Or Login with"),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 2,
          width: 130,
          color: Colors.black,
        ),
      ],
    );
  }

  Widget OnlineLogin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/google.avif",
                  scale: 19,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Google",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/fackbook.png",
                  scale: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "FackBook",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
