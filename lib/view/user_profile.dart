import 'package:flutter/material.dart';
import 'package:iti_proj/view/AboutApp.dart';
import 'package:iti_proj/view/AppTeam.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String?email="";
  String?phone="";
  String?name="";
  Future<void> getEmail()
  async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    email=prefs.getString('email')??'';
    setState(() {

    });
  }
  Future<void> getName()
  async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    name=prefs.getString('signUser')??'';
    setState(() {

    });
  }
  Future<void> getPhone()
  async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    phone=prefs.getString('phone')??'';
    setState(() {

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getEmail();
    getName();
    getPhone();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed:(){
            Navigator.pop(context);
          } ,
          icon: const Icon(Icons.arrow_back,color:Color( 0xFF223BC9),),
        ),
        title: Text('Edit Profile',style: TextStyle(color:  Color(0xFFE63B60),fontFamily: "Pacifico"),),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit,size: 30,color: Color( 0xFF223BC9),),
            onPressed: () {
              // Perform search action
            },
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/image/userrr.png.jpg'),
                backgroundColor: Colors.transparent,
                radius: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              itemProfile('Name', name!, Icons.person),
              const SizedBox(
                height: 10,
              ),
              itemProfile('Phone', phone!, Icons.person),
              const SizedBox(
                height: 10,
              ),
              itemProfile('Email', email!, Icons.email),
              const SizedBox(
                height: 10,
              ),
              itemProfile('Address', 'mansoura ,mubark city',
                  Icons.location_city_rounded),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()
                  {
                    Navigator.pop(context);
                  },
                  child: const Text('Sign out',style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 6, 127, 208),
                    padding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),)
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              InkWell(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const TeamApp()));
                },
                child: Text(
                    'App Team',
                  style: TextStyle(
                    color:Color(0xFFE63B60),
                    fontFamily: 'IBMPlexSansArabic',
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              InkWell(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AboutApp()));
                },
                child: const Text(
                  'About App',
                  style: TextStyle(
                    color:Color(0xFFE63B60),
                    fontFamily: 'IBMPlexSansArabic',
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: ([
          BoxShadow(
            offset: const Offset(0, 5),
            color: const Color.fromARGB(255, 21, 26, 123).withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ]),
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: const Icon(
          Icons.arrow_forward,
          color: Color.fromARGB(255, 21, 26, 123),
        ),
        tileColor: Colors.white,
      ),
    );
  }
}
