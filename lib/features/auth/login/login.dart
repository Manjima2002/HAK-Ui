import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/features/auth/login/otpverification.dart';
import 'package:flutter_application_1/features/auth/login/signup.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/images/Copy of DIL HAK_ (1).png',
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  ' Log In Now!',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                ),
                height: 50,
                width: 350,
                child: TextField(
                  showCursor: true,
                  cursorHeight: 25,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'Mobile Number',
                    hintStyle: GoogleFonts.aBeeZee(
                      color: Colors.grey,
                    ),
                    prefixIcon: Icon(Icons.phone),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              child: Text(
                'Send OTP',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Otpverification()),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't Have an Account?",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 12, fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.pink),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
