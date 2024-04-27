import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Lottie.asset(
                'assets/animation/login_animation.json',
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                'Hey Welcome Back',
                style: GoogleFonts.aBeeZee(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(35, 57, 83, 0.455),
                            offset: Offset(
                              20,
                              10,
                            ),
                            blurRadius: 19),
                      ],
                      color: const Color.fromARGB(255, 240, 235, 235),
                      borderRadius: BorderRadius.circular(10)),
                  height: height * 0.05,
                  width: width * 0.7,
                  child: TextField(
                    showCursor: false,
                    cursorHeight: height * 0.03,
                    cursorColor: Color.fromARGB(255, 124, 123, 123),
                    decoration: InputDecoration(
                      hintText: 'Mobile Number',
                      hintStyle: GoogleFonts.aBeeZee(
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(Icons.phone),
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 2,
                          color: Color.fromRGBO(35, 57, 83, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: 170,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(35, 57, 83, 0.455),
                        offset: Offset(
                          20,
                          10,
                        ),
                        blurRadius: 19),
                  ],
                  borderRadius: BorderRadius.circular(18),
                  color: Color.fromRGBO(35, 57, 83, 1),
                ),
                child: Center(
                    child: Text(
                  'Send OTP',
                  style: GoogleFonts.aBeeZee(color: Colors.white),
                )),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont Have an Account',
                      style: GoogleFonts.aBeeZee(
                          fontSize: 10, fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 40,
                  ),
                  TextButton(onPressed: () {}, child: Text('Sign Up'))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class GradiantContainer extends StatelessWidget {
  const GradiantContainer({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 30,
      ),
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 240, 4, 83),
            Color.fromARGB(255, 214, 73, 120),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height * 0.2,
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Log In",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome Back!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Container(
          height: height * 0.66,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60), topRight: Radius.circular(60)),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.pinkAccent.shade100,
                            blurRadius: 20,
                            offset: Offset(0, 10)),
                      ]),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: Colors.grey.shade200))),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Email or Phone number",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: Colors.grey.shade200))),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.pinkAccent,
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
