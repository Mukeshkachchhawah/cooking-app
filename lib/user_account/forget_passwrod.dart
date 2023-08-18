import 'package:cooking_food/database/db_helper.dart';
import 'package:cooking_food/user_account/resend_pass.dart';
import 'package:flutter/material.dart';

class Forget_Password extends StatelessWidget {
  const Forget_Password({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();

    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Forget User Password",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Enter Email"),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == "" || !value!.contains("@")) {
                        return "pleace enter valid email";
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Enter User Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {

                      if(formkey.currentState!.validate()){
                        var check = MyDBHelper().forget_pass(emailController.text);
                          
                      }
                   
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 4, 24, 112),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Conform",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
