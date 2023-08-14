import 'package:flutter/material.dart';

class BuildCustomItem extends StatelessWidget {
  const BuildCustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hig = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: wid * .33,
        height: hig * .2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient:  const LinearGradient(
              colors: [
                Color(0xFFffb2b2),
                Color(0xFFb2b2ff),
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),

        ),
        child: Column(
          children: [
            Image(
              image: const AssetImage("assets/images/login.png"),
              width: wid,
              height: hig * .2,
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }
}
