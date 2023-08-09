import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'Categories.dart';
import 'list-product.dart';
import 'newadded.dart';
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool homeColor =true;
  bool cartColor =false;
  bool aboutColor =false;
  bool contactUsColor =false;
  bool logOutColor =false;
  String? name='';
  String? email='';
  Future<void> getName()
  async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    name=prefs.getString('signUser')??'';
    setState(() {

    });
  }
  Future<void> getEmail()
  async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    email=prefs.getString('email')??'';
    setState(() {

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getName();
    getEmail();
  }

  final GlobalKey<ScaffoldState> _key =GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [



      'assets/images/c5.jpg',
      'assets/images/d4.jpg',
      'assets/images/x6.jpg',
      'assets/images/c1.jpg',
      'assets/images/d6.jpg',
      'assets/images/d1.jpg',
      'assets/images/c8.jpg',
      'assets/images/c4.jpg',
      'assets/images/d2.jpg',
      'assets/images/c7.jpg',
      'assets/images/d3.jpg',
      'assets/images/b2.jpg',








    ];

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.asset(item, fit: BoxFit.fill, width: 2000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    // child: Text(
                    //   'No. ${imgList.indexOf(item)} image',
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 20.0,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                  ),
                ),
              ],
            )),
      ),
    ))
        .toList();
    return  Scaffold(
      key: _key,
      drawer: Drawer(
        child: ListView(

          children: [
            const Spacer(flex: 2,),
             UserAccountsDrawerHeader(

              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/th.jpg"),),

              decoration: BoxDecoration(
                color: Color(0xfff2f2f2),
              ),
              accountName: Text(name!,style: TextStyle(color:  Color(0xff151a7b),fontSize: 15,fontFamily: "IBMPlexSansArabic-Regular.ttf"),),
              accountEmail:  Text(email!,style: TextStyle(color:  Color(0xff151a7b),fontSize: 15,fontFamily: "IBMPlexSansArabic-Regular.ttf"),),),
            const Spacer(flex: 8,),


        ListTile(
          selected: homeColor,
          onTap: (){
            setState(() {
              homeColor=true;
              cartColor=false;
              aboutColor=false;
              contactUsColor=false;
              logOutColor=false;
            });
          },
          leading: const Icon(Icons.home,color: Color(0xff151a7b),size: 40,),
          title: const Text("Home",style: TextStyle(color:  Color(0xffe63b60),fontSize: 35,fontFamily: "Pacifico-Regular.ttf"),),

        ) ,

            ListTile(
             selected: cartColor,
              onTap: (){
                setState(() {
                  cartColor=true;
                  homeColor=false;
                  aboutColor=false;
                  contactUsColor=false;
                  logOutColor=false;

                });
              },
              leading: const Icon(Icons.shopping_cart,color: Color(0xff151a7b),size: 40,),
              title: Text("Cart",style: TextStyle(color:  Color(0xffe63b60),fontSize: 35,fontFamily: "Pacifico-Regular.ttf"),),

            ) ,

            ListTile(
              selected: aboutColor,
              onTap: (){
                setState(() {
                  aboutColor=true;
                  cartColor=false;
                  homeColor=false;
                  contactUsColor=false;
                  logOutColor=false;

                });
              },
              leading: const Icon(Icons.info,color: Color(0xff151a7b),size: 40,),
              title: const Text("About",style: TextStyle(color:  Color(0xffe63b60),fontSize: 35,fontFamily: "Pacifico-Regular.ttf"),),


            ) ,
            ListTile(
              selected: contactUsColor,
              onTap: (){
                setState(() {
                  contactUsColor=true;
                  cartColor=false;
                  aboutColor=false;
                  homeColor=false;
                  logOutColor=false;

                });
              },
              leading: Icon(Icons.phone,color: Color(0xff151a7b),size: 40,),
              title: Text("Contact Us",style: TextStyle(color:  Color(0xffe63b60),fontSize: 35,fontFamily: "Pacifico-Regular.ttf"),),


            ) ,
            ListTile(
selected: logOutColor,
              onTap: (){
                contactUsColor=false;
                cartColor=false;
                aboutColor=false;
                homeColor=false;
                logOutColor=true;
              },
              leading: Icon(Icons.exit_to_app,color: Color(0xff151a7b),size: 40,),
              title: Text("LogOut",style: TextStyle(color:  Color(0xffe63b60),fontSize: 35,fontFamily: "Pacifico-Regular.ttf"),),

            ) ,




          ],
        ),

      ),
      appBar: AppBar(
      //  shadowColor: Colors.grey,
        backgroundColor: const Color(0xfffafafa),
leading:           IconButton(onPressed: (){
  _key.currentState?.openDrawer();
}, icon: const Icon(Icons.menu),color: Color(0xff151a7b),)
        ,
        title: Text("evendo",style: TextStyle(color:  Color(0xffe63b60),fontSize: 40,fontFamily: "Pacifico"),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_outlined),color: Color(0xff151a7b),),
          IconButton(onPressed: (){}, icon: Icon(Icons.send),color: Color(0xff151a7b))

        ],
      ),
      body: SingleChildScrollView(
        child: Container(

          child: Column(
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(

                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,size: 30,color:  Color(0xff151a7b),),
                 labelText:  "Search Something" ,
                      labelStyle: TextStyle(fontSize: 20,fontFamily: "IBMPlexSansArabic-Regular.ttf",color:Color(0xff151a7b),),
                      border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )
                  ),
                ),
              ),
              SizedBox(height: 10,),
            Container(
              height: 200,
              child:CarouselSlider(
                  items: imageSliders,
                  options: CarouselOptions(
                    height: 400,
                    aspectRatio: 16/9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,

                    scrollDirection: Axis.horizontal,
                  )
              ) ,
            ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Categorie",style: TextStyle(fontSize: 20,color:Color(0xff151a7b),fontWeight: FontWeight.bold,fontFamily: "IBMPlexSansArabic-Regular.ttf"),),

                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Category()));
                  }, child:     Text("See all",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff151a7b),fontFamily: "IBMPlexSansArabic-Regular.ttf"),),)

                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 80,
                width: double.infinity,
                child: SingleChildScrollView(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,


                    children: [

                      CircleAvatar(
                        maxRadius: 30,
                        backgroundColor:  Color(0xff33dcfd),
                        child: Container(

                          width: 40,
                          child: Image(
                            color: Colors.white,


                            image: AssetImage("assets/images/12.png"),),
                        ),
                      ),
                      SizedBox(width: 20,),
                      CircleAvatar(
                        maxRadius: 30,
                        backgroundColor:  Color(0xfff38cdd),
                        child: Container(
                          width: 50,
                          height: 40,
                          child: Image(
                            color: Colors.white,

                            image: AssetImage("assets/images/14.png"),),
                        ),
                      ),
                      SizedBox(width: 10,),

                      CircleAvatar(
                        maxRadius: 30,
                        backgroundColor:   Color(0xff74acf7),
                        child: Image(
                          color: Colors.white,

                          image: AssetImage("assets/images/17.png"),),
                      ),
                      SizedBox(width: 10,),

                      CircleAvatar(
                        maxRadius: 30,
                        backgroundColor:   Color(0xff74aca7),
                        child: Image(
                          color: Colors.white,

                          image: AssetImage("assets/images/18.png"),),
                      ),
                      SizedBox(width: 10,),

                      CircleAvatar(
                        maxRadius: 30,
                        backgroundColor:   Color(0xff4ff2af),
                        child: Image(
                          color: Colors.white,

                          image: AssetImage("assets/images/19.png"),),
                      ),
                      SizedBox(width: 10,),

                      CircleAvatar(
                        maxRadius: 30,
                        backgroundColor:  Color(0xfffc6c8d),
                        child: Container(
                          width: 40,
                          child: Image(
                            color: Colors.white,
                            image: AssetImage("assets/images/16.png"),),
                        ),
                      ),
                      SizedBox(width: 10,),

                      CircleAvatar(
                        maxRadius: 30,
                        backgroundColor:  Color(0xfffc6c8d),
                        child: Container(
                          width: 40,
                          child: Image(
                            color: Colors.white,
                            image: AssetImage("assets/images/15.png"),),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
            Container(
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Featured",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff151a7b),fontFamily: "IBMPlexSansArabic-Regular.ttf"),),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => List_product()));
          }, child:     Text("See all",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff151a7b),fontFamily: "IBMPlexSansArabic-Regular.ttf"),),),

                      ],
                    ),
                  )
                ],
              ),
            ),
              SizedBox(height: 20,),

         SingleChildScrollView(

           scrollDirection: Axis.horizontal,
           child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
           Card(
           child: Container(
           height: 250,
             width: 180,

             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Container(
                   height: 170,
                   width: 160,

                   decoration: BoxDecoration(
                     image: DecorationImage(image:  AssetImage('assets/images/c8.jpg'),),
                   ),
                 ),
                 SizedBox(height: 20,),
                 Text("\$30.0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff9b9616)),),
                 Text("Man Shirt",style: TextStyle(fontSize: 20,fontFamily: "Pacifico-Regular.ttf"),),
        ] )
             )

           ),
                 Card(
                   child: Container(
                     height: 250,
                     width: 180,

                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Container(
                           height: 170,
                           width: 160,

                           decoration: BoxDecoration(
                             image: DecorationImage(image:  AssetImage('assets/images/7.png'),),
                           ),
                         ),
                         SizedBox(height: 20,),
                         Text("\$120.0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff9b9616)),),
                         Text("Woman T-Shirt",style: TextStyle(fontSize: 20,fontFamily: "Pacifico-Regular.ttf"),),



                       ],
             ),
           ),
        ),
               Card(
                   child: Container(
                       height: 250,
                       width: 180,

                       child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Container(
                               height: 170,
                               width: 160,

                               decoration: BoxDecoration(
                                 image: DecorationImage(image:  AssetImage('assets/images/6.png'),),
                               ),
                             ),
                             SizedBox(height: 20,),
                             Text("\$1199.0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff9b9616)),),
                             Text("Apple watch",style: TextStyle(fontSize: 20,fontFamily: "Pacifico-Regular.ttf"),),
                           ] )
                   )

               ),
               Card(
                   child: Container(
                       height: 250,
                       width: 180,

                       child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Container(
                               height: 170,
                               width: 160,

                               decoration: BoxDecoration(
                                 image: DecorationImage(image:  AssetImage('assets/images/3.png'),),
                               ),
                             ),
                             SizedBox(height: 20,),
                             Text("\$1999.0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff9b9616)),),
                             Text("Nothing 2",style: TextStyle(fontSize: 20,fontFamily: "Pacifico-Regular.ttf"),),
                           ] )
                   )

               ),

             ],
           ),
         )  ,
              SizedBox(height: 10,),




              Container(
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("New Added",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff151a7b),fontFamily: "IBMPlexSansArabic-Regular.ttf"),),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>NewAdded()));
                          }, child:     Text("See all",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff151a7b),fontFamily: "IBMPlexSansArabic-Regular.ttf"),),),

                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(

                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [


                    Card(
                        child: Container(
                            height: 250,
                            width: 180,

                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 170,
                                    width: 160,

                                    decoration: BoxDecoration(
                                      image: DecorationImage(image:  AssetImage('assets/images/4.png'),),
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Text("\$80.0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff9b9616)),),
                                  Text("T-Shirt",style: TextStyle(fontSize: 20,fontFamily: "Pacifico-Regular.ttf"),),
                                ] )
                        )

                    ),
                    Card(
                      child: Container(
                        height: 250,
                        width: 180,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 170,
                              width: 160,

                              decoration: BoxDecoration(
                                image: DecorationImage(image:  AssetImage('assets/images/2.png'),),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text("\$60.0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff9b9616)),),
                            Text("Roblex T-Shirt",style: TextStyle(fontSize: 20,fontFamily: "Pacifico-Regular.ttf"),),



                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        height: 250,
                        width: 180,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 170,
                              width: 160,

                              decoration: BoxDecoration(
                                image: DecorationImage(image:  AssetImage('assets/images/camera.png'),),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text("\$700.0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff9b9616)),),
                            Text("Camera Canon",style: TextStyle(fontSize: 20,fontFamily: "Pacifico-Regular.ttf"),),



                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        height: 250,
                        width: 180,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 170,
                              width: 160,

                              decoration: BoxDecoration(
                                image: DecorationImage(image:  AssetImage('assets/images/5.png'),),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text("\$49.0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff9b9616)),),
                            Text("M45",style: TextStyle(fontSize: 20,fontFamily: "Pacifico-Regular.ttf"),),



                          ],
                        ),
                      ),
                    ),
]
                    ),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                ],
              ),
              SizedBox(height: 30,),





            ],
          )
          ,

        ),
      ),

    );
  }
}




