// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_books/cores/cores.dart';
import 'package:the_books/windows/homepage.dart';
// import 'package:the_books/windows/secondpage.dart';
// import 'package:the_books/windows/threepage.dart';

void main() {
  runApp(const TheBooks());
}

class TheBooks extends StatefulWidget {
  const TheBooks({Key? key}) : super(key: key);

  @override
  State<TheBooks> createState() => _TheBooksState();
}

class _TheBooksState extends State<TheBooks> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: backround,
          body: HomePage(),
          // SecondPage(),
          // ThreePage(),
        ),
      ),
    );
  }
}
