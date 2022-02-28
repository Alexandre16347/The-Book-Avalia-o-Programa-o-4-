import 'package:flutter/material.dart';
import 'package:the_books/cores/cores.dart';

class Avatar extends StatelessWidget {
  String quant;
  String texto;
  Avatar({Key? key, required this.quant, required this.texto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30),
      child: Container(
        height: 70,
        width: 105,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            // stops: [0.01, 0.7],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              quaseAzulClaro,
              branco,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                quant,
                style: TextStyle(
                  fontSize: 25,
                  color: azul,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                texto,
                style: TextStyle(
                  fontSize: 15,
                  color: azulEscuro,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
