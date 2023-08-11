import 'package:flutter/material.dart';
import 'package:flutter_application_1/pic.dart';

class MyFruits extends StatelessWidget {
  const MyFruits({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Fruits', 
            style: TextStyle(
                fontSize: 25, fontFamily: 'Pacifico', color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: const MyPic(),
      ),
    );
  }
}