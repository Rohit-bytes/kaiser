import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:kaiser/view/auth/loginmain.dart';
import 'package:kaiser/view/auth/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.network('https://static.vecteezy.com/system/resources/previews/035/916/301/non_2x/ai-generated-male-anime-characters-transparent-background-free-png.png',height: 200,width: 200,)
          ,
              SizedBox(height: 10,),
          Text("Let's you in",style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600)),),
          SizedBox(height: 10,),
        Container(
          height: 50,
          decoration: BoxDecoration(border: Border.all(width: 0.4,),borderRadius: BorderRadius.circular(10)),
          child: Center(
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/600px-Facebook_Logo_%282019%29.png',height: 20,),
              SizedBox(width: 10,),
              Text('Continue with Facebook',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w600))),
            
            
            ],
            ),
          ),
        ),
            SizedBox(height: 10,),
        Container(
          height: 50,
          decoration: BoxDecoration(border: Border.all(width: 0.4,),borderRadius: BorderRadius.circular(10)),
          child: Center(
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.network('https://pngimg.com/d/google_PNG19635.png',height: 30,),
              SizedBox(width: 10,),
              Text('Continue with Google',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w600))),
            
            
            ],
            ),
          ),
        ),
            SizedBox(height: 10,),
        Container(
          height: 50,
          decoration: BoxDecoration(border: Border.all(width: 0.4,),borderRadius: BorderRadius.circular(10)),
          child: Center(
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.network('https://cdn-icons-png.flaticon.com/512/0/747.png',height: 20,),
              SizedBox(width: 10,),
              Text('Continue with Apple',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w600))),
            
            
            ],
            ),
          ),
        ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(children: [
            
                Expanded(child: Divider()),
                SizedBox(width: 10,),
                  Text('or',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w600))),
                   SizedBox(width: 10,),
                     Expanded(child: Divider()),
            ],),
          ),
SizedBox(height: 10,),
          ElevatedButton(
            style: ButtonStyle().copyWith(
              
              shadowColor: WidgetStateProperty.all(Colors.blue)
              ,minimumSize: WidgetStateProperty.all(Size(double.infinity,40),)),
            onPressed: (){
              Get.to(()=>Loginmain());


            }, child: Text('Sign in with password',style: TextStyle(color: Colors.white),)),

SizedBox(height: 20,),

GestureDetector(
  onTap: (){
    Get.to(()=>Signup());
  },
  child: RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: "Don't have an account",
          style: TextStyle(color: Colors.black),
        ),
        TextSpan(
          text: ' Sign up',
          style: TextStyle(color: Color.fromARGB(255, 0, 122, 223),fontWeight: FontWeight.bold ),
        ),
      ],
    ),
  ),
)
       ],
          ),
        ),
      ),
    );
  }
}