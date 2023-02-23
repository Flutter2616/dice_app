import 'dart:math';

import 'package:flutter/material.dart';

class Color extends StatefulWidget {
  const Color({Key? key}) : super(key: key);

  @override
  State<Color> createState() => _ColorState();
}

class _ColorState extends State<Color> {
  List color = [
    Colors.blueGrey,
    Colors.blue,
    Colors.amber,
    Colors.grey,
    Colors.white,
    Colors.red,
    Colors.green,
    Colors.pink,
    Colors.indigo,
    Colors.brown,
    Colors.orange,
    Colors.purple,
    Colors.greenAccent,
    Colors.lime,
    Colors.teal,
    Colors.black,
  ];
  int a = 0, b = 0, c = 0, d = 0, e = 0, f = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Color pallet \n Generetor",
              style: TextStyle(
                letterSpacing: 2,
                color: Colors.blueGrey,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 400,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.amber,width: 2),
              ),
              child: Column(
                children: [
                  Container(
                    height: 66,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: color[a]),
                  ),
                  Container(height: 66, width: 100, color: color[b]),
                  Container(height: 66, width: 100, color: color[c]),
                  Container(height: 66, width: 100, color: color[d]),
                  Container(height: 66, width: 100, color: color[e]),
                  Container(
                    height: 66,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        color: color[a]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // if (a != b || a != c || a != d || a != e || a != f) {
                  Random no = Random();
                  a = no.nextInt(16);
                  c = no.nextInt(16);
                  d = no.nextInt(16);
                  e = no.nextInt(16);
                  f = no.nextInt(16);
                  b = no.nextInt(16);

                  // if(a == b || a == c || a == d || a == e || a == f)
                  //   {
                  //     a=no.nextInt(16);
                  //   }
                  // else if(a == b || b == c || b == d || b == e || b == f)
                  //   {
                  //     b=no.nextInt(16);
                  //   }
                  // else if(c == b || a == c || c == d || c == e || c == f)
                  // {
                  //   c=no.nextInt(16);
                  // }
                  // else if(d == b || d == c || a == d || d == e || d == f)
                  // {
                  //   d=no.nextInt(16);
                  // }
                  // else if(e == b || e == c || e == d || a == e || e == f)
                  // {
                  //   e=no.nextInt(16);
                  // }
                  // else if(f == b || f == c || f == d || f == e || a == f)
                  // {
                  //   f=no.nextInt(16);
                  // }
                });
              },
              child: Text(
                "Tap To Change Color",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w200),
              ),
            )
          ],
        ),
      ),
    );
  }
}
