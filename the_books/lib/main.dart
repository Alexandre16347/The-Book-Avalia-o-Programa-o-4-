import 'package:flutter/material.dart';
import 'package:the_books/cores/cores.dart';

void main() {
  runApp(TheBooks());
}

class TheBooks extends StatefulWidget {
  TheBooks({Key? key}) : super(key: key);

  @override
  State<TheBooks> createState() => _TheBooksState();
}

class _TheBooksState extends State<TheBooks> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Row(
                axis,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Aleatorio',
                        style: TextStyle(
                          color: cinza,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        'Mais Aleatorio',
                        style: TextStyle(
                            color: preto,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: amarelo,
                    child: Icon(
                      Icons.notifications,
                      color: azul,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
