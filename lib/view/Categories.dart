import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60,),

            Container(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Categories",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color:Color(0xffe63b60),fontFamily: "Pacifico-Regular.ttf",),),
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back,size: 40,color: Color(0xffe63b60),))
                  ],
                )),
            SizedBox(height: 20,),

            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
               // color: Colors.cyan,
                image: DecorationImage(image: AssetImage('assets/images/ct1.png'),fit:BoxFit.fill),
              ),
              child:     Container(
                  alignment:Alignment.bottomRight,
                //  child: Text("Men Clothes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.black,fontFamily: "Pacifico-Regular.ttf"),)
                ),
            ),

            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                // color: Colors.cyan,
                image: DecorationImage(image: AssetImage('assets/images/ct4.png'),fit:BoxFit.fill),
              ),
              child:     Container(
                alignment:Alignment.bottomRight,
                //  child: Text("Men Clothes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.black,fontFamily: "Pacifico-Regular.ttf"),)
              ),
            ),  Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                // color: Colors.cyan,
                image: DecorationImage(image: AssetImage('assets/images/ct6.png'),fit:BoxFit.fill),
              ),
              child:     Container(
                alignment:Alignment.bottomRight,
                //  child: Text("Men Clothes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.black,fontFamily: "Pacifico-Regular.ttf"),)
              ),
            ),  Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                // color: Colors.cyan,
                image: DecorationImage(image: AssetImage('assets/images/ct7.png'),fit:BoxFit.fill),
              ),
              child:     Container(
                alignment:Alignment.bottomRight,
                //  child: Text("Men Clothes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.black,fontFamily: "Pacifico-Regular.ttf"),)
              ),
            ),

            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                // color: Colors.cyan,
                image: DecorationImage(image: AssetImage('assets/images/ct2.png'),fit:BoxFit.fill),
              ),
              child:     Container(
                alignment:Alignment.bottomRight,
                //  child: Text("Men Clothes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.black,fontFamily: "Pacifico-Regular.ttf"),)
              ),
            ),
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                // color: Colors.cyan,
                image: DecorationImage(image: AssetImage('assets/images/ct3.png'),fit:BoxFit.fill),
              ),
              child:     Container(
                alignment:Alignment.bottomRight,
                //  child: Text("Men Clothes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.black,fontFamily: "Pacifico-Regular.ttf"),)
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                // color: Colors.cyan,
                image: DecorationImage(image: AssetImage('assets/images/ct9.png'),fit:BoxFit.fill),
              ),
              child:     Container(
                alignment:Alignment.bottomRight,
                //  child: Text("Men Clothes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.black,fontFamily: "Pacifico-Regular.ttf"),)
              ),
            ),

            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                // color: Colors.cyan,
                image: DecorationImage(image: AssetImage('assets/images/ct10.png'),fit:BoxFit.fill),
              ),
              child:     Container(
                alignment:Alignment.bottomRight,
                //  child: Text("Men Clothes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.black,fontFamily: "Pacifico-Regular.ttf"),)
              ),
            ),  Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                // color: Colors.cyan,
                image: DecorationImage(image: AssetImage('assets/images/ct11.png'),fit:BoxFit.fill),
              ),
              child:     Container(
                alignment:Alignment.bottomRight,
                //  child: Text("Men Clothes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.black,fontFamily: "Pacifico-Regular.ttf"),)
              ),
            ),  Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                // color: Colors.cyan,
                image: DecorationImage(image: AssetImage('assets/images/ct8.png'),fit:BoxFit.fill),
              ),
              child:     Container(
                alignment:Alignment.bottomRight,
                //  child: Text("Men Clothes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.black,fontFamily: "Pacifico-Regular.ttf"),)
              ),
            ),


          ],
        ),
      ),
    );
  }
}
