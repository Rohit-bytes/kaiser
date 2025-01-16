import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kaiser/animecontent.dart';
import 'package:kaiser/view/jikan_api.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    jikanapi().fetchData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(backgroundColor: Colors.transparent,
      // toolbarHeight: 90,
      // automaticallyImplyLeading: false,
      // actions: [
      //   Icon(CupertinoIcons.search),
      //   SizedBox(width: 20,),
      //   Icon(CupertinoIcons.bell),
      //     SizedBox(width: 10,),
      // ],
      // leading: Image.network('https://i.pinimg.com/originals/09/bf/a8/09bfa8fc88c434c81f15b48047c932be.png'),
      // surfaceTintColor: Colors.white,),

      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
        Stack(
          children: [
            
             Container(
        height: 300,
        width: double.infinity,
        
        child: Stack(
          children: [
            Opacity(
              opacity: 0.50,
              child: Image.network("https://imgsrv.crunchyroll.com/cdn-cgi/image/fit=contain,format=auto,quality=70,width=1200,height=675/catalog/crunchyroll/28e1dd5a66e30154d12ab458465ebd83.jpg",fit: BoxFit.cover,height: 500,)),
         Align(
        
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Demon Slayer: Kimetsu no Yaiba',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              Text('Action, Shounen, Martial Arts, Adventure,....',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 10),),
             SizedBox(height: 10,),
        
             Row(children: [
         Container(
              height: 25,
              width: 70,
              decoration: BoxDecoration(color: Color.fromARGB(255, 0, 122, 223),borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.play_circle_rounded,size: 13,color: Colors.white,),
              Text('Play',style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),),
              
            ],),
             ),
             SizedBox(width: 10,),
              Container(
              height: 25,
              width: 70,
              decoration: BoxDecoration(border: Border.all(width: 1.3,color: Colors.white),color: Colors.transparent,borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("+",style:TextStyle(color:Colors.white,) ),
              Text('My List',style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),),
              
            ],),
             ),
        
             ],),
            
        
           
              ],
            ),
          ),
         ),
             
          ],
        )),
           
           
            Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: Row(
          
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        
          Image.network('https://i.pinimg.com/originals/09/bf/a8/09bfa8fc88c434c81f15b48047c932be.png',height: 50,),
           Row(children: [ Icon(CupertinoIcons.search,color: Colors.grey,),
            SizedBox(width: 20,),
            Icon(CupertinoIcons.bell,color: Colors.grey,),
              SizedBox(width: 20,),],),
           
           
        
        ],),
            ),
         
            
           ],
        ),
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 16),
           child: Animecontent(name: 'Top Hits Anime',image: 'https://snworksceo.imgix.net/ttd/dd98cc9a-86ba-4ff5-8395-3084026f7efd.sized-1000x1000.jpg?w=1000&dpr=2',),
         ),
        
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 16),
           child: Animecontent(name: 'New Episode Releases',image: 'https://snworksceo.imgix.net/ttd/dd98cc9a-86ba-4ff5-8395-3084026f7efd.sized-1000x1000.jpg?w=1000&dpr=2',),
         ),
        ],),
      ),
    );
  }
}