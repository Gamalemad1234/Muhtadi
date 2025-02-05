// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Custom_Add extends StatelessWidget {
  const Custom_Add({
    super.key,
    required this.global, required this.text1, required this.textLable, required this.text2, required this.textLable2,
  });

  final GlobalKey<FormState> global;
   final String text1;
   final String text2;
   final String textLable;
   final String textLable2;
   
    
  @override
  Widget build(BuildContext context) {
    return Form(
     key:global ,
      child: Container(
       color: const Color.fromARGB(255, 0, 0, 0),
       child: ListView(
         children: [
           Center(
             child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(50)
               ),
               height: 120,
               width: 120,
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(200),
                 child: Image.asset("assets/icons/logo.png" , fit: BoxFit.cover,),
               ),
             ),
           ) ,
      
      
               Container(
             height: 30,
           ),
      
      
           Container(
             margin: EdgeInsets.only(left:25),
             child: Text(text1 , style: TextStyle(
               color: const Color.fromARGB(255, 255, 255, 255),
               fontSize: 30,
               fontWeight: FontWeight.bold
             ),),
           ) ,
      
           Container(
             height: 50,
           ),
      
       
       Container(
         decoration: BoxDecoration(
         ),
         margin: EdgeInsets.symmetric(horizontal: 10),
         child: Expanded(
           child: TextFormField(
             decoration: InputDecoration(
             hintText:textLable,
            enabledBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(50)
            ),
            fillColor: Colors.white ,
            filled: true,
            
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50)
            )
    
             ),
             
           ),
         ),
       ) ,



         
       Container(
         decoration: BoxDecoration(
         ),
         margin: EdgeInsets.symmetric(horizontal: 10),
         child: Expanded(
           child: TextFormField(
             decoration: InputDecoration(
             hintText:textLable2,
            enabledBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(50)
            ),
            fillColor: Colors.white ,
            filled: true,
            
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50)
            )
    
             ),
             
           ),
         ),
       )
      
      
         ],
       ),
      ),
    );
  }
}