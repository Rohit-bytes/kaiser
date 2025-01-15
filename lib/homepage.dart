import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaiser/auth/login.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/736x/e3/e4/16/e3e4169858dbb41f0b0743e8f4a588cc.jpg'),
                fit: BoxFit.cover,
                // colorFilter: ColorFilter.linearToSrgbGamma(),
               
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome to Kaiser',
                  style: GoogleFonts.vt323(
                    textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'The best Streaming anime app of the',
                  style: GoogleFonts.lateef(
                    textStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  
                ),
                   Text(
                  'century to entertain you every day',
                  style: GoogleFonts.lateef(
                    textStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                  fontWeight: FontWeight.w700,
                    ),
                  ),

                  
                ),
                SizedBox(height: 10,),

Padding(
  padding: EdgeInsets.symmetric(horizontal: 180),
  child: LinearProgressIndicator(color: const Color.fromARGB(255, 0, 122, 223),value: 0.3,borderRadius: BorderRadius.circular(10),)),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    style: ButtonStyle().copyWith(minimumSize: WidgetStateProperty.all(Size(double.infinity,40),)),
                    
                    onPressed: (){
Get.to(()=>Login());

                    }, child: Text('Get Started',style: TextStyle(color: Colors.white),)),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
