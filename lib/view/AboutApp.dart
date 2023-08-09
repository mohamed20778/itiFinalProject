import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),
        backgroundColor: const Color.fromARGB(255, 21, 26, 123),
        centerTitle: true,
        title: const Text('About App',style: TextStyle(color: Colors.white),),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "A simple e-commerce program that allows the user to purchase products and allows them to log in Your safety and security are our top priorities. Shop with confidence knowing that our store employs the latest state-of-the-art security measures to protect your personal information and ensure a worry-free shopping experience. From secure payment gateways to robust data encryption, we've got you covered every step of the way. Thank you for trusting us with your online shopping journey. Explore, shop, and relax, knowing that your privacy and security are in capable hands. Happy shopping!",


              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
