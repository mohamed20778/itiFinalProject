import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isPassword=true;
  var usernameController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var phonenumController=TextEditingController();
  final _formkey=GlobalKey<FormState>();
  Future<void>setUsername()
  async {
    final SharedPreferences prefs= await SharedPreferences.getInstance();
    await prefs.setString('signUser', usernameController.text);
  }
  Future<void>setPhone()
  async {
    final SharedPreferences prefs= await SharedPreferences.getInstance();
    await prefs.setString('phone', phonenumController.text);
  }
  Future<bool>signUp()
  async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      if(credential.user!=null)
      {
        return true;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    return false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(

              children: [

                const Text('Sign UP',
                  style: TextStyle(
                    color: Color( 0xFF151A7B),
                    fontSize: 70,
                    fontWeight:FontWeight.bold,
                    fontFamily: 'IBMPlexSansArabic',

                  ),
                ),

                const SizedBox(height: 35,),

                TextFormField(
                  validator: (value)
                  {
                    if(value!.isEmpty)
                    {
                      return 'Username Not Valid';
                    }
                    else {
                      return null;
                    }
                  },
                  controller:usernameController ,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.supervised_user_circle_outlined,color: Color( 0xFF151A7B),),
                      labelText: ' User Name',
                      labelStyle: TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Color( 0xFF151A7B) )
                  ),
                ),

                const SizedBox(height: 20,),

                TextFormField(
                  validator: (value)
                  {
                    if(value!.isEmpty)
                    {
                      return 'Phone Not Valid';
                    }
                    else {
                      return null;
                    }
                  },
                  controller: phonenumController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone_enabled_outlined,color: Color( 0xFF151A7B),),
                      labelText: ' Phone',
                      labelStyle: TextStyle(fontSize:15,fontWeight: FontWeight.bold ,color: Color( 0xFF151A7B))
                  ),
                ),

                const SizedBox(height: 20,),

                TextFormField(
                  validator: (value)
                  {
                    if(value!.isEmpty|!value.contains('@'))
                    {
                      return 'Email Not Valid';
                    }
                    else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  controller:emailController ,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined,color: Color( 0xFF151A7B),),
                    labelText: 'Email',
                    labelStyle: TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Color( 0xFF151A7B) ),
                  ),
                ),

                const SizedBox(height: 20,),
                TextFormField(
                  obscureText:isPassword,
                  validator: (value)
                  {
                    if(value!.isEmpty||value.length<8)
                    {
                      return 'Password Not Valid';
                    }
                    else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.visiblePassword,
                  controller:passwordController ,
                  decoration:  InputDecoration(
                    prefixIcon: const Icon(Icons.lock_outline,color: Color( 0xFF151A7B),),
                    suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            isPassword=!isPassword;
                          });
                        },
                        icon: isPassword? const Icon(CupertinoIcons.eye, color:Color( 0xFF151A7B) ,):const Icon(CupertinoIcons.eye_slash,color: Color( 0xFF151A7B),)),
                    labelText: 'password',
                    labelStyle: const TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Color( 0xFF151A7B) ),
                  ),
                ),
                const SizedBox(height: 9,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already member?',style: TextStyle(fontSize: 17),),
                    const SizedBox(width: 9,),
                    InkWell(
                      child: const Text(
                        'Login',
                        style:
                        TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color( 0xFF151A7B),
                        ),
                      ),
                      onTap: ()
                      {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
                const SizedBox(height: 30,),
                Container(
                  width: 100,
                  decoration: const BoxDecoration(

                      color: Color( 0xFF151A7B),
                  ),
                  child: MaterialButton(

                    onPressed: ()
                    async {
                      if(_formkey.currentState!.validate())
                      {
                        if(await signUp())
                        {
                          setUsername();
                          setPhone();
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Sign up Successful')));
                        }
                        else
                        {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Sign up Not Success")));
                        }
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                      }
                    },
                    child: const Text('Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
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
