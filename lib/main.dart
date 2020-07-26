import 'package:flutter/material.dart';
import 'appcomponent.dart';
import 'package:sampleapp/Screens/Login/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      /**
       * to disable debug banner
       */
      debugShowCheckedModeBanner: false,

      title: 'Finance House',
      theme: ThemeData(
        primaryColor: PrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginScreen(),
    );
  }
}