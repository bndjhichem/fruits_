import 'dart:math';

import 'package:flutter/material.dart';

class MyPic extends StatefulWidget {
  const MyPic({super.key});

  @override
  State<MyPic> createState() => _MyPicState();
}

class _MyPicState extends State<MyPic> {
  int leftimagesnumber = 1;
  int rightimagesnumber = 2;

  void changenumber() {
    leftimagesnumber = Random().nextInt(9) + 1;
    rightimagesnumber = Random().nextInt(9) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          leftimagesnumber == rightimagesnumber
              ? 'Congratulations'
              : 'Try again',
          style: const TextStyle(
              fontFamily: 'Pacifico', fontSize: 40, color: Colors.redAccent),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            children: [
              Expanded(
                child: Image.asset('images/image-$leftimagesnumber.jpg'),
              ),
              Expanded(
                child: Image.asset('images/image-$rightimagesnumber.jpg'),
              ),
            ],
          ),
        ),
        OutlinedButton(
          onPressed: () {
            setState(() {
              changenumber();
            });
          },
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.blue, width: 3.0),
            foregroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: const Text(
            'Press',
            style: TextStyle(fontFamily: 'Pacifico', fontSize: 20),
          ),
        ),
      ],
    );
  }
}
