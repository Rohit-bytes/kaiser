import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:kaiser/view/home.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Sign up',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  'https://i.pinimg.com/originals/09/bf/a8/09bfa8fc88c434c81f15b48047c932be.png',
                  height: 120,
                  width: 200,
                ),
                const SizedBox(height: 10),
                Text(
                  'Create Your Account',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  controller: emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 122, 223)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 122, 223)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 122, 223)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 122, 223)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 122, 223)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 122, 223)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(Icons.email),
                  ),
                  style: TextStyle(color: Colors.black), 
                  validator: (value) {
                      // Check if the email is null or empty
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }

                          // Define a regular expression for a valid email address with a proper TLD
                          String pattern =
                              r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|org|net|edu|gov|mil|int|info|biz|name|pro|coop|aero|museum)$';
                          RegExp regExp = RegExp(pattern);

                          // Check if the email contains '@' and matches the pattern
                          if (!value.contains('@')) {
                            return 'Email must contain @ symbol';
                          } else if (!regExp.hasMatch(value)) {
                            return 'Please enter a valid email address with a valid domain like .com, .org, .net, etc.';
                          }

                          return null; // Return null if the input is valid
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  style: TextStyle(color: Colors.black), 
                  controller: passwordcontroller,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black),
                    labelText: 'Password',
                    
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 122, 223)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 122, 223)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 122, 223)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 122, 223)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 122, 223)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 122, 223)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      // Perform login action
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Welcome to kaiser')),
                      );

                      Get.offAll(()=>Home());
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      minimumSize: Size(double.infinity, 40)),
                  child: Text(
                    'Sign up',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    children: [
                      Expanded(child: Divider()),
                      SizedBox(
                        width: 10,
                      ),
                      Text('or continue with',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600))),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                ),

                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.network(
                        'https://static.vecteezy.com/system/resources/previews/018/930/476/non_2x/facebook-logo-facebook-icon-transparent-free-png.png',height: 10,
                      ),
                    ),
                    SizedBox(width: 10,),
                      Container(
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.network(
                        "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png",height: 10,
                      ),
                    ),
                        SizedBox(width: 10,),
                      Container(
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.network(
                        'https://cdn3.iconfinder.com/data/icons/social-media-logos-i-filled-line/2048/5315_-_Apple-512.png',color: Colors.black,
                      ),
                    ),
                 
                  ],
                ),
                   SizedBox(height: 15,),
                    RichText(
  text: TextSpan(
    children: [
      TextSpan(
        text: "Don't have an account",
        style: TextStyle(color: Colors.black),
      ),
      TextSpan(
        text: ' Sign in',
        style: TextStyle(color: Color.fromARGB(255, 0, 122, 223),fontWeight: FontWeight.bold ),
      ),
    ],
  ),
)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
