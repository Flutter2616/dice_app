import 'dart:math';

import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController length = TextEditingController();
  List otp = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"];
  List x = [];
  int a = 0;
  String number="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFE8B8),
      appBar: AppBar(
        backgroundColor: Color(0xff15172B),
        centerTitle: true,
        title: Text(
          "OTP GENERETOR",
          style: TextStyle(
            letterSpacing: 2,
            color: Color(0xffF6DB87),
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 40,
              width: 200,
              color: Colors.white,
              child: TextField(
                controller: length,
                decoration: InputDecoration(
                  // labelText: "Enter OTP length",
                  label: Text(
                    "Enter OTP length",
                    style: TextStyle(
                      color: Color(0xff15172B),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff15172B), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff15172B), width: 1),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                String number = length.text;
                int a = int.parse(number);
                setState(() {
                  for (int i = 0; i < a; i++) {
                    Random custom = Random();
                    x.add(custom.nextInt(10));
                  }
                });
              },
              child: Container(
                height: 40,
                width: 250,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xb61a1a38),
                      Color(0x5f4c4c65),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(color: Color(0xff15172B), blurRadius: 3),
                  ],
                ),
                child: Text(
                  "OTP Generetor",
                  style: TextStyle(
                      color: Color(0xffFFE8B8),
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 2),
                ),
              ),
            ),
            Container(
              height: 90,
              width: 400,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xff15172B),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                  x.asMap().entries.map((e) => Box(x[e.key])).toList()),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  x=[];
                  number="";
                });
              },
              child: Container(
                height: 40,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xff15172B),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Text(
                  "RESET",
                  style: TextStyle(
                      color: Color(0xffFFE8B8),
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Box(int y) {
    return Container(
      height: 40,
      width: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Color(0xffFFE8B8),
      ),
      child: Text(
        "$y",
        style: TextStyle(
          color: Color(0xff15172B),
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
    );
  }
}

//0xffFFE8B8--golden
//0xff15172B--blue
