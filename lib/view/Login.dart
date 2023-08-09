import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_proj/view/homescreen.dart';
import 'package:iti_proj/view/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../sharedComponent/comp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var userController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  final _formKey=GlobalKey<FormState>();
  bool isPassword=true;
  Future<void> setEmail()
  async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email',emailController.text);
  }
  Future<bool>checkEmail()
  async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      if(credential.user!=null)
      {
        return true;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }

    }return false;

  }

  //IconData?suffix=IconButton(onPressed: onPressed, icon: icon);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(height: 40,),
                const Center(
                  child: Image(
                    height: 250,
                    width: 250,
                    image: AssetImage("assets/image/logo_2.png"),
                  ),
                ),
                const SizedBox(height: 50,),

                const SizedBox(height: 20,),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller:emailController,
                  validator: (value)
                  {
                    if(value!.isEmpty| !value.contains("@"))
                    {
                      return 'Enter valid Email';
                    }
                    else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration
                    (
                      suffixIcon: Icon(Icons.email,color: Color(0xFF223BC9),),
                      labelText: "Email or Phone number",
                      labelStyle: TextStyle(
                        fontFamily: 'IBMPlexSansArabic',
                        color:Color( 0xFF223BC9),
                        fontSize: 20,


                      )
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: passwordController,
                  obscureText:isPassword,
                  validator: (value)
                  {
                    if(value!.isEmpty||value.length<8)
                    {
                      return("Invalid password");
                    }
                    else {return null;}
                  },
                  decoration:  InputDecoration
                    (
                      suffixIcon: IconButton(onPressed: (){setState(() {
                        isPassword=!isPassword;
                      });}, icon: isPassword?const Icon(CupertinoIcons.eye,color:Color( 0xFF223BC9),):const Icon(CupertinoIcons.eye_slash,color: Color( 0xFF223BC9),)),
                      labelText: "Password",
                      labelStyle: const TextStyle(
                        fontFamily: 'IBMPlexSansArabic',
                        color: Color( 0xFF223BC9),
                        fontSize: 20,

                      )
                  ),
                ),
                const SizedBox(height: 30,),
                loginButton(
                    background: const Color(0xFFE63B60),
                    label: 'login',
                    onclick:()
                    async {
                      if (_formKey.currentState!.validate()) {

                        if(await checkEmail())
                        {
                          setEmail();
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const HomeScreen(),
                              )
                          );
                        }else
                        {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Your email not found')));
                        }

                      }
                    },
                    radius: 14
                ),

                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontFamily: 'IBMPlexSansArabic',
                          color:Color(0xFFE63B60),
                          fontSize: 15
                      ),
                    ),
                    const SizedBox(width: 10,),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "Click here",
                        style: TextStyle(
                          fontFamily: 'IBMPlexSansArabic',
                          color: Color( 0xFF223BC9),
                          fontSize: 15,

                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 45,),
                Container(

                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(14),
                  ),

                  child: MaterialButton(

                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>const SignUp() ));
                    },
                    child: const Text(

                      'No ACCOUNT ?Sign Up',
                      style: TextStyle(color: CupertinoColors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
