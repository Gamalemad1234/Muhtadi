// ignore_for_file: camel_case_types, file_names, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:muhtadi/thems/constants.dart';

class welcompage extends StatefulWidget {
  const welcompage({super.key});

  @override
  State<welcompage> createState() => _welcompageState();
}

class _welcompageState extends State<welcompage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: kPrimaryColor,
      child: ListView(
        shrinkWrap: false,
        children: [
          Container(
            margin: EdgeInsets.only(top: 190),
            child: Column(
              children: [
                Container(
                    height: 200,
                    width: 200,
                    child: Image.asset("assets/icons/quran_5196552.png")),
                Container(
                  child: Text(
                    "مۘــﮪــٿــدۑْۧ",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 200,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 100),
              height: 60,
              width: 150,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 4, 87, 6),
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                children: [
                  MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("login");
                    },
                    child: Text(
                      'GetStart',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ))
        ],
      ),
    ));
  }
}
