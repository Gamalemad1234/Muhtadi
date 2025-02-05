// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, file_names, unused_local_variable, use_build_context_synchronously, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:muhtadi/screens/azkar.dart';
import 'package:muhtadi/screens/qran.dart';
import 'package:muhtadi/screens/sepha.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int current = 0;
  List data =
  [
    Sepha(),
    Qran(),
    // setting(),
    azkar(),
  ];
  @override
  Widget build(BuildContext context) {
     Size size =  MediaQuery.of(context).size;
    return Scaffold(
     
   bottomNavigationBar:   Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          // padding: EdgeInsets.symmetric(vertical: 10),
          height: size.height*.10,
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BottomNavigationBar(
                type:BottomNavigationBarType.shifting,
                backgroundColor: Colors.white,
                mouseCursor: MouseCursor.uncontrolled,
                
                landscapeLayout:BottomNavigationBarLandscapeLayout.spread,
                elevation: 20,
                unselectedIconTheme: IconThemeData(color: Colors.grey , size: 35),               
                selectedIconTheme: IconThemeData(color: Colors.green,size: 30),
                currentIndex: current,
                iconSize: 30,
                
                onTap: (index) {
                  setState(() {
                    current = index;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    backgroundColor: const Color.fromARGB(188, 0, 0, 0),
                    icon: Icon(Icons.timer_outlined,),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: const Color.fromARGB(188, 0, 0, 0),
                    icon: Icon(Icons.menu_book_sharp),
                    label: '',
                  ),
                  
                  BottomNavigationBarItem(
                    backgroundColor: const Color.fromARGB(188, 0, 0, 0),
                    icon: Icon(Icons.all_inbox_rounded ),
                    label: '',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

     body: data.elementAt(current)
    );
  }
}