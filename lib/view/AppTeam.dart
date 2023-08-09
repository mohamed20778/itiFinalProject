import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_proj/sharedComponent/comp.dart';

class TeamApp extends StatelessWidget {
  const TeamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
        icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 21, 26, 123),
        title: const Text(
          'App Team',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,

          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:30,),
            const Text(
                '1-Mohamed Gehad Mokhtar Elneanaa',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                  fontFamily: 'IBMPlexSansArabic',
              ),
            ),
            const SizedBox(height: 50,),
            const Text(
              '2-yahia EL-Sayed El-Adl',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'IBMPlexSansArabic',
              ),
            ),
            const SizedBox(height: 50,),
            const Text(
              '3-Alaa Ahmed Abd EL-Ftah El-Metwaly',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'IBMPlexSansArabic',
              ),
            ),
            const SizedBox(height: 50,),
            const Text(
              '4-Moataz Tarek Sayed Ahmed',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'IBMPlexSansArabic',
              ),
            ),
            const SizedBox(height: 50,),
            const Text(
              '5-Ahmed Hany Kamal Abdeldayum',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'IBMPlexSansArabic',
              ),
            ),
            const SizedBox(height: 100,),

          ],
        ),
      ),
    );
  }
}
