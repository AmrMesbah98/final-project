import 'package:flutter/material.dart';

import 'Widget/build_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              gradient:  LinearGradient(
                  colors: [
                    Color(0xFFb2b2ff),
                    Color(0xFFffffff),
                  ],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image(
                    image: AssetImage("assets/images/login.png"),
                    width: 50,
                    height: 40,
                    fit: BoxFit.fill,
                  ),
                  Spacer(),
                  Icon(
                    Icons.notifications,
                    color: Colors.deepOrangeAccent,
                  )
                ],
              ),
            ),
            BuildSection(label: "Courses",),
            BuildSection(label: "Projects"),
            BuildSection(label: "Instructor"),
          ],
        ),
      )),
    );
  }
}










