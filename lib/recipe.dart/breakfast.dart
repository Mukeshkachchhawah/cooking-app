import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../custom_widets/custom_slider.dart';

class BreakFast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding( 
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Hero(tag: "gdfg", child: Custom_Slider()
          
          
          
                    ),
                Card(
                  child: Container(
                    //   margin: EdgeInsets.only(top: 300),
                    height: 900,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "BarkFast",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Mr Mukesh Kachchhawaha"),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              shadowColor: Colors.black,
                              child: ListTile(
                                leading: Icon(Icons.timer_outlined),
                                title: Text("10 min"),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Description",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              "Breakfast is often called 'the most important meal of the day', and for good reason. As the name suggests, breakfast breaks the overnight fasting period. It replenishes your supply of glucose to boost your energy levels and alertness, while also providing other essential nutrients required for good health."),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Ingredients",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 20,
                                  ),
                          ListTile(
                            leading: SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.network(
                                  "https://cdn.newsfirst.lk/english-uploads/2020/02/2f9bf4eb-bread-2_850x460_acf_cropped.jpg",
                                  fit: BoxFit.cover,
                                )),
                            title: Text("5 Bread"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ListTile(
                            leading: SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.network(
                                    "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/324844_2200-1200x628.jpg",fit: BoxFit.cover,)),
                            title: Text("50 ml Oil"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ListTile(
                            leading: SizedBox(
                                height: 100,
                                  width: 100,
                              child: Image.network(
                                  "https://projecteagle.s3.ap-south-1.amazonaws.com/images/c8df40db-c0d6-43c5-9ea9-1c6be969e28e.jpg"),
                            ),
                            title: Text("1 Tomato"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ListTile(
                            leading: SizedBox(  height: 100,
                                  width: 100,
                              child: Image.network(
                                  "https://www.farmersfamily.in/wp-content/uploads/2020/08/Green-Chilli.jpg",fit: BoxFit.cover,),
                            ),
                            title: Text("Green Chili"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ListTile(
                            leading: SizedBox(  height: 100,
                                  width: 100,child: Image.network("https://www.hindisarkariresult.com/wp-content/uploads/2021/05/Chaat-Masala.jpg",fit: BoxFit.cover,)),
                            title: Text("1/2 tsp chaat masala"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                           ListTile(
                            leading: SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.network(
                                  "https://florafoods.in/wp-content/uploads/2022/09/Byadagi-Chilli-Powder-03-1-1.jpg",
                                  fit: BoxFit.cover,
                                )),
                            title: Text("red chili powder as per taste"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ListTile(
                            leading: SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.network(
                                    "https://4.imimg.com/data4/VP/KM/MY-27173382/common-salt-powder-500x500.jpg",fit: BoxFit.cover,)),
                            title: Text("Salt"),
                          ),
                        
                          SizedBox(
                            height: 10,
                          ),
                          ListTile(
                            leading: SizedBox(  height: 100,
                                  width: 100,child: Image.network("https://images.hindi.news18.com/ibnkhabar/uploads/2022/06/shutterstock_1613456791-16542576294x3.jpg",fit: BoxFit.cover,)),
                            title: Text("Onion"),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
