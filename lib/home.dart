// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:earn_project/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool view = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(45.0),
            child: ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),

                //title
                Row(
                  children: [
                    Text(
                      "Sign Up",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                //textfield username
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.black26,
                    width: 2,
                  ))),
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/user.png',
                          width: 25,
                        )),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            "User name",
                            style: GoogleFonts.aBeeZee(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.purple),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: 40,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Abc",
                                hintStyle: GoogleFonts.aBeeZee(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
                ),

                SizedBox(
                  height: 25,
                ),

                //textfield email
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.black26,
                    width: 2,
                  ))),
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/mail.png',
                          width: 25,
                        )),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            "Email",
                            style: GoogleFonts.aBeeZee(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.purple),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: 40,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Abc@gmail.com",
                                hintStyle: GoogleFonts.aBeeZee(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
                ),

                SizedBox(
                  height: 25,
                ),

                //textfield password
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.black26,
                    width: 2,
                  ))),
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/lock.png',
                          width: 25,
                        )),
                    Align(
                        alignment: Alignment.centerRight,
                        child: view
                            ? InkWell(
                                onTap: () {
                                  setState(() {
                                    view = false;
                                  });
                                },
                                child: Image.asset(
                                  'assets/view.png',
                                  color: Colors.black38,
                                  width: 25,
                                ),
                              )
                            : InkWell(
                                onTap: () {
                                  setState(() {
                                    view = true;
                                  });
                                },
                                child: Image.asset(
                                  'assets/hide.png',
                                  color: Colors.black38,
                                  width: 25,
                                ),
                              )),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            "Password",
                            style: GoogleFonts.aBeeZee(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.purple),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: 40,
                            child: TextField(
                              obscureText: view,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: ". . . .",
                                hintStyle: GoogleFonts.aBeeZee(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
                ),

                SizedBox(
                  height: 25,
                ),

                //sign in button
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.purple,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 244, 182, 255),
                          blurRadius: 7,
                          spreadRadius: 3,
                          offset: Offset(0, 5),
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            "SIGN UP",
                            style: GoogleFonts.aBeeZee(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                //already have an account
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have an account? ",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black26),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "SIGN IN",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.purple),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
