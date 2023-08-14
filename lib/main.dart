import 'package:finalproject/Features/login/presntation/login/login.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
