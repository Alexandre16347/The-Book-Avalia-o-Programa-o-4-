import 'package:flutter/material.dart';
import 'package:the_books/cores/cores.dart';

// ignore: must_be_immutable
class Cards extends StatelessWidget {
  IconData icone;
  String titulo;
  int num;
  Color? corBackground;
  Cards(
      {Key? key,
      required this.icone,
      required this.titulo,
      required this.num,
      this.corBackground})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35),
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: corBackground ?? branco,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: corBackground == null
                                  ? rosaClaro
                                  : azulEscuro,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      corBackground == null ? rosa : azulEscuro,
                                ),
                                child: Icon(
                                  icone,
                                  color:
                                      corBackground == null ? branco : amarelo,
                                  size: corBackground == null ? 20 : 30,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 80),
                            child: Text(
                              titulo,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color:
                                    corBackground != null ? branco : azulEscuro,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              '$num books',
                              style: TextStyle(
                                fontSize: 18,
                                color: corBackground != null ? branco : cinza,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
