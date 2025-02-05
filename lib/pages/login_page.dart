// ignore_for_file: avoid_unnecessary_containers, avoid_single_cascade_in_expression_statements, body_might_complete_normally_nullable, sized_box_for_whitespace, prefer_const_constructors, unused_local_variable, use_build_context_synchronously, avoid_print, avoid_returning_null_for_void, curly_braces_in_flow_control_structures, unused_import

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:muhtadi/pages/homePage.dart';
import 'package:muhtadi/pages/sigup_page.dart';

class loginPaeg extends StatefulWidget {
  const loginPaeg({super.key});

  @override
  State<loginPaeg> createState() => _loginPaegState();
}

class _loginPaegState extends State<loginPaeg> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> global = GlobalKey();
  bool current = false;
 
 Future signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
   await FirebaseAuth.instance.signInWithCredential(credential);
   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => homepage(),));
}
  

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
                    
                      AwesomeDialog(
            context: context,
            dialogType: DialogType.info,
            animType: AnimType.rightSlide,
            title: 'Dialog Title',
            desc: "This Field Can't Be Empity",
           
            )..show();
                    
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
                  onPressed: ()async{
                    if(global.currentState!.validate())
                    
                      try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email.text,
    password: password.text
  );
  if(credential.user!.emailVerified){
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => homepage(),));
  }
    else{
              

                       AwesomeDialog(
              context: context,
              dialogType: DialogType.question,
              animType: AnimType.rightSlide,
              title: 'Email Error',
              desc: 'Please Verify your email ',
              btnOkOnPress: () {
                  FirebaseAuth.instance.currentUser!.sendEmailVerification();
              },
                         
              )..show();
                
                    }
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
       AwesomeDialog(
            context: context,
            dialogType: DialogType.info,
            animType: AnimType.rightSlide,
            title: 'Email Error',
            desc: "No user found for that email",
           
            )..show();
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
      AwesomeDialog(
            context: context,
            dialogType: DialogType.info,
            animType: AnimType.rightSlide,
            title: 'Passsword Error',
            desc: "'Wrong password provided for that user.'",
           
            )..show();
    print('Wrong password provided for that user.');
  }
}
                  
                  } , child: Text("Sign In " , style: TextStyle(
                  color: Colors.white
                ),),),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                child: Row(
                
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 1,width: 80,color: Colors.black,),
                  Text("Or Continue with"),
                  Container(height: 1,width: 80,color: Colors.black,),
                ],
              ),),


              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        signInWithGoogle();
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Image.asset("assets/icons/google.png" , ),
                      ),
                    ),


                     GestureDetector(
                      onTap: () {
                     
                      },
                       child: Container(
                        height: 60,
                        width: 60,
                        child: Image.asset("assets/icons/apple.png" , ),
                                           ),
                     ), GestureDetector(
                      onTap: () {
                        
                      },
                       child: Container(
                        height: 60,
                        width: 60,
                        child: Image.asset("assets/icons/facebook.png" , ),
                                           ),
                     ),
                  ],
                ),
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
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignupPage(),));
                    },
                    child: Text("Register now" , style: TextStyle(
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
