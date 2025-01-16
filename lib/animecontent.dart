import 'package:flutter/material.dart';

class Animecontent extends StatelessWidget {
  String? image;
  String? name;
  Animecontent({this.image,this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
children: [

  Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: [
      Text("${name}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      SizedBox(width: 10,),
      Text('See All',style: TextStyle(color: Color.fromARGB(255, 0, 122, 223),fontWeight: FontWeight.bold),),
    ],),
SizedBox(height: 20,),
    Container(
      height: 200,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return      Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
          Container(
            height: 200,
            width: 140,
            
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
        
        child: ClipRRect(
       borderRadius: BorderRadius.circular(10),
          child: Container(
           
            child: Image.network(image.toString(),fit: BoxFit.cover,),),
        ),
          ),
          SizedBox(width: 10,),
        ],);
         
        },
        scrollDirection: Axis.horizontal,
      
         ),
    ),
],

      ),
    );
  }
}