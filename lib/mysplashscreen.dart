import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Mysplashscreen extends StatelessWidget {
  const Mysplashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(color:Colors.black),
        child: Center(
          child: Stack(
   
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Image.network('https://i.pinimg.com/originals/09/bf/a8/09bfa8fc88c434c81f15b48047c932be.png',height: 200,width: 200,)),
       
           Positioned(
              left: 170,
              top: 328,
              
              
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                    AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'KAISER',
                        textStyle: TextStyle(
                          fontSize: 30,
                          color: const Color.fromARGB(255, 0, 122, 223),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                 
                    ],
                 totalRepeatCount: 1,
                  ),
                  AnimatedTextKit(animatedTexts: [     TyperAnimatedText(
                        'Anime Streaming...',
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 0, 122, 223),
                          fontWeight: FontWeight.w800,
                        ),
                      ),],
                      totalRepeatCount: 3,
                      )
              ],
             ),
           ),
      
            ],
          ),
        ),
      ),
    );
  }
}