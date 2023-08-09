import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class List_product extends StatelessWidget {
  const List_product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Container(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Featured",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color:Color(0xffe63b60),fontFamily: "Pacifico-Regular.ttf",),),
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back,size: 40,color: Color(0xffe63b60),))
                  ],
                )),
            SizedBox(height: 20,),
        Row(
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
                        image: DecorationImage(image:  AssetImage("assets/images/d6.jpg"),),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("\$120.0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff9b9616)),),
                    Text("Woman T-Shirt",style: TextStyle(fontSize: 20,fontFamily: "Pacifico-Regular.ttf"),),



                  ],
                ),
              ),
            ),]
        ),


            Row(
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
                              image: DecorationImage(image:  AssetImage("assets/images/d6.jpg"),),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text("\$120.0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff9b9616)),),
                          Text("Woman T-Shirt",style: TextStyle(fontSize: 20,fontFamily: "Pacifico-Regular.ttf"),),



                        ],
                      ),
                    ),
                  ),]
            ),
            Row(
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
                              image: DecorationImage(image:  AssetImage("assets/images/d6.jpg"),),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text("\$120.0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff9b9616)),),
                          Text("Woman T-Shirt",style: TextStyle(fontSize: 20,fontFamily: "Pacifico-Regular.ttf"),),



                        ],
                      ),
                    ),
                  ),]
            ),
            Row(
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
                              image: DecorationImage(image:  AssetImage("assets/images/d6.jpg"),),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text("\$120.0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff9b9616)),),
                          Text("Woman T-Shirt",style: TextStyle(fontSize: 20,fontFamily: "Pacifico-Regular.ttf"),),



                        ],
                      ),
                    ),
                  ),]
            ),
            Row(
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
                              image: DecorationImage(image:  AssetImage("assets/images/d6.jpg"),),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text("\$120.0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff9b9616)),),
                          Text("Woman T-Shirt",style: TextStyle(fontSize: 20,fontFamily: "Pacifico-Regular.ttf"),),



                        ],
                      ),
                    ),
                  ),]
            ), Row(
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
                              image: DecorationImage(image:  AssetImage("assets/images/d6.jpg"),),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text("\$120.0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff9b9616)),),
                          Text("Woman T-Shirt",style: TextStyle(fontSize: 20,fontFamily: "Pacifico-Regular.ttf"),),



                        ],
                      ),
                    ),
                  ),]
            ),
          ],
        ),
      ),
    );
  }
}
