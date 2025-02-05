// ignore_for_file: avoid_single_cascade_in_expression_statements, unused_local_variable, avoid_print, prefer_const_constructors, use_build_context_synchronously, body_might_complete_normally_nullable, avoid_unnecessary_containers, curly_braces_in_flow_control_structures

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:muhtadi/pages/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
    TextEditingController username = TextEditingController();
    TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> global = GlobalKey();
  bool current = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: global,
        child: Container(
          color: Colors.white12,
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  child: Text(
                    "Hello Again!",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  child: Text(
                    "Welcome back You've\n\t\t\t\t\tbeen missed!",
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 51, 47, 47),
                    blurRadius: BorderSide.strokeAlignOutside,
                    offset: Offset(0, 3),
                    spreadRadius: BorderSide.strokeAlignCenter
                  )
                ]),
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  validator: (value) {
                    if(value == "")
                    {
                      AwesomeDialog(
            context: context,
            dialogType: DialogType.info,
            animType: AnimType.rightSlide,
            title: 'Dialog Title',
            desc: "This Field Can't Be Empity",
           
            )..show();
                    }
                  },
                  controller: username ,
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    hintStyle: TextStyle(
                      color: Colors.black54 
                    ),
                      filled: true,
                      fillColor: const Color.fromARGB(179, 255, 255, 255),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(1),
                      ),
                      
                      border: OutlineInputBorder(
                           borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(1),
                      )
                      ),
                ),
              ),




     
           


              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 51, 47, 47),
                    blurRadius: BorderSide.strokeAlignOutside,
                    offset: Offset(0, 3),
                    spreadRadius: BorderSide.strokeAlignCenter
                  )
                ]),
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  validator: (value) {
                    if(value == "")
                    {
                      AwesomeDialog(
            context: context,
            dialogType: DialogType.info,
            animType: AnimType.rightSlide,
            title: 'Dialog Title',
            desc: "This Field Can't Be Empity",
           
            )..show();
                    }
                  },
                  controller: email ,
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    hintStyle: TextStyle(
                      color: Colors.black54 
                    ),
                      filled: true,
                      fillColor: const Color.fromARGB(179, 255, 255, 255),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(1),
                      ),
                      
                      border: OutlineInputBorder(
                           borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(1),
                      )
                      ),
                ),
              ),



                         SizedBox(
                height: 20,
              ),





                 Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 51, 47, 47),
                    blurRadius: BorderSide.strokeAlignOutside,
                    offset: Offset(0, 3),
                    spreadRadius: BorderSide.strokeAlignCenter
                  )
                ]),
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(

                  obscureText: current,
                  controller: password ,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    hintStyle: TextStyle(
                      color: Colors.black54 
                    ),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        current = !current ;
                      });
                    }, icon: Icon(Icons.remove_red_eye_rounded)),
                      filled: true,
                      fillColor: const Color.fromARGB(179, 255, 255, 255),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(1),
                      ),
                      
                      border: OutlineInputBorder(
                           borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(1),
                      )
                      ),
                ),
              ),



              Container(
                margin: EdgeInsets.only(right: 20  , top: 15),
                alignment: Alignment.topRight,
                child: Text("Forget Password" , style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
              ),



              Container(
                margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 30),
                child: MaterialButton(
                  height: 60,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  color: Colors.red[300],
                  onPressed: () async{
                  try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email.text,
    password: password.text,
  );
   FirebaseAuth.instance.currentUser!.sendEmailVerification();

  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => loginPaeg(),));
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') 
    AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            animType: AnimType.rightSlide,
            title: 'Password',
            desc: 'The password provided is too weak..',
            
            )..show();


   else if (e.code == 'email-already-in-use') 
      AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            animType: AnimType.rightSlide,
            title: 'Email',
            desc: 'The account already exists for that email.',
            
            )..show();


  
} catch (e) {
  print(e);
}
                  } , child: Text("Register " , style: TextStyle(
                  color: Colors.white
                ),),),
              ),

            




              Container(
                margin: EdgeInsets.only(top: 70),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?  "),
                  GestureDetector(
                    onTap: () {
                                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => loginPaeg(),));
                    },
                    child: Text("Login now" , style: TextStyle(
                      color: Colors.blue
                    ),),
                  )
                ],
              ),),
              



            ],
          ),
        ),
      ),
    );
  }
}