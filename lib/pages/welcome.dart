// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/pages/Sign_in.dart';
import 'package:flutter_application_1/pages/sign_up.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: backgroundColor1,
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: size.height * 0.53,
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(40)),
                    color: primaryColor,
                    image: DecorationImage(
                        image: AssetImage("assets/img/image.png"))),
              ),
            ),
            Positioned(
                top: size.height * 0.6,
                left: 0,
                right: 0,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Discover your\nDream job Here",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: buttonColor,
                            height: 1.2),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Explore all the most exiting jobs roles\nbased on your interest And study major",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: textColor2,
                        ),
                      ),
                      SizedBox(height: size.height * 0.07),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          height: size.height * 0.08,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: backgroundColor3.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.white),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.05),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(0, -1),
                                )
                              ]),
                          child: Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Signup()));
                                  },
                                  child: Container(
                                    height: size.height * 0.08,
                                    width: size.width / 2.2,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Register",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: textColor1),
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignIn()));
                                  },
                                  child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: textColor1),
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
