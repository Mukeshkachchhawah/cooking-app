import 'package:cooking_food/database/db_helper.dart';
import 'package:cooking_food/modal/user_modal.dart';
import 'package:cooking_food/user_account/login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Sign_Up extends StatelessWidget {
  Sign_Up({super.key});
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopContainer(),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Create your account",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField_Mid(),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      var check = await MyDBHelper().createUser(User_Modal(
                          email: emailController.text,
                          password: passwordController.text));

                      if (check) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      } else {
                        // show erro
                      }
                    }

                    //////////////// Sign up Home page //////////////////////////////
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an acoount?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                      },
                      child: Text("Sign-in"),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 28,
                ),
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
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            //  controller: emailController,
            validator: (value) {
              if (value == " " || !value!.contains("@")) {
                return "Pleace Enter Your Valid email";
              } else {
                // show errow
              }
            },
            decoration: InputDecoration(
                label: Text("Email"),
                hintText: "Enter Your Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            // controller: emailController,
            validator: (value) {
              if (value == "" || value!.length < 6) {
                return "Pleace Enter Your Valid Password";
              } else {
                // show errow
              }
            },
            decoration: InputDecoration(
                label: Text("Password"),
                hintText: "Enter Your Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            //  controller: emailController,
            validator: (value) {
              if (value == "" || value!.length < 6) {
                return "Pleace Enter Your Valid Password";
              } else {
                // show errow
              }
            },
            decoration: InputDecoration(
                label: Text("Conform Password"),
                hintText: "Enter Your Conform Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          /*  SizedBox(
            height: 15,
          ),
          TextFormField(
           // controller: emailController,
            validator: (value) {
              if (value == "" || value!.length < 10) {
                return "Pleace Enter conform password";
              } else {
                /// show erro
              }
            },
            decoration: InputDecoration(
                label: Text("Phone Number"),
                hintText: "Enter Your Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ), */
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
