import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_proj/view/homePage.dart';
import 'package:iti_proj/view/laptops.dart';
import 'package:iti_proj/view/user_profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int CurrentIndex=0;
  List<String>Titles=[
    'Product',
    'Category',
    'Profile',
  ];
  List<Widget>Screens=[
    const homepage(),
    const laptops(),
    const ProfileScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 19,
          selectedItemColor:Color.fromARGB(255, 21, 26, 123),
          elevation: 20,
          currentIndex:CurrentIndex ,
          onTap:(index)
          {
            setState(() {
              CurrentIndex=index;
            });
          } ,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),

              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits_outlined,),
              label: 'Products'
            ),
            BottomNavigationBarItem(

              icon: Icon(CupertinoIcons.profile_circled),
              label: 'Profile',

            ),

          ]
      ),
      body: Screens[CurrentIndex],
    );
  }
}