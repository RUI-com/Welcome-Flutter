// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/colors.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        // appBar: AppBar(
        //     elevation: 0,
        //     leading: IconButton(
        //         onPressed: () {
        //           Navigator.push(context,
        //               MaterialPageRoute(builder: (context) => Welcome()));
        //         },
        //         icon: Icon(
        //           Icons.arrow_back_rounded,
        //           color: buttonColor,
        //         ))),
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        colors: [
          backgroundColor2,
          backgroundColor2,
          backgroundColor4,
        ],
      )),
      child: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),

            SizedBox(height: 15),
            Text(
              "Sign Up",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 37,
                color: textColor1,
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),

            // for username and password
            myTextField("Name", Colors.white),
            myTextField("Email", Colors.white),
            myTextField("Password", Colors.black26),
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(children: [
                Container(
                  width: size.width,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 2,
                      width: size.width * 0.2,
                      color: Colors.black12,
                    ),
                    Text(
                      "  Or continue with   ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: textColor2,
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      height: 2,
                      width: size.width * 0.2,
                      color: Colors.black12,
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialIcon("assets/img/google.png"),
                    socialIcon("assets/img/apple.png"),
                    socialIcon("assets/img/facebook.png"),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                  child: Text.rich(
                    TextSpan(
                        text: "You Have Account? ",
                        style: TextStyle(
                          color: textColor2,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        children: [
                          TextSpan(
                            text: "Sign in now",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    ));
  }

  Container socialIcon(image) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 15,
      ),
      child: Image.asset(
        image,
        height: 20,
      ),
    );
  }

  Container myTextField(String hint, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 19,
              vertical: 19,
            ),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.black45,
              fontSize: 19,
            ),
            suffixIcon: Icon(
              Icons.visibility_off_outlined,
              color: color,
            )),
      ),
    );
  }
}
