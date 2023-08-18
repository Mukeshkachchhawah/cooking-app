import 'package:cooking_food/database/db_helper.dart';
import 'package:cooking_food/user_account/login.dart';
import 'package:flutter/material.dart';


class ResendPassword extends StatefulWidget {
  String email;
   ResendPassword({super.key, required this.email});

  @override
  State<ResendPassword> createState() => _ResendPasswordState();
}

class _ResendPasswordState extends State<ResendPassword> {
  @override
  Widget build(BuildContext context) {

    final formkey = GlobalKey<FormState>();

    TextEditingController newPasswordController = TextEditingController();
   
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
                  Text(
                    "Re-send Password",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("New Password"),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == "" || value!.length<6) {
                        return "enter new password";
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Enter New Passwrod",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                   SizedBox(
                    height: 20,
                  ),
                  Text("Confrom Password"),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == "" || value!.length<6) {
                        return "enter new password";
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Confrom Passwrod",
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
                    onTap: () async{
                     if(formkey.currentState!.validate()){
                     var check = await MyDBHelper().resend_passwords(newPasswordController.text, widget.email);
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
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