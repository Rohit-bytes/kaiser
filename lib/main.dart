import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaiser/homepage.dart';
import 'package:kaiser/mysplashscreen.dart';


void main(){
  runApp(const myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Get.offAll(() => Homepage());
    });
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     
      
debugShowCheckedModeBanner: false,
theme: ThemeData(
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor:  Color.fromARGB(255, 0, 122, 223),
      textStyle: TextStyle(color: Colors.white) // Change the color of elevated buttons here
    ),
  ),
  primaryColor: const Color.fromARGB(255, 0, 122, 223),
  hintColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),

  ),
),
title: 'Kaiser',
      home: Mysplashscreen(),
    );
  }
}