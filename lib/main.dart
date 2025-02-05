// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_import, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:muhtadi/firebase_options.dart';
import 'package:muhtadi/pages/homePage.dart';

void main()async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ super.key });

  @override
  State<MyApp> createState() => __MyAppState();
}

class __MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: homepage(),
    );
  }
}