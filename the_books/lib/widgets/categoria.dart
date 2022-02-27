import 'package:flutter/widgets.dart';
import 'package:the_books/cores/cores.dart';

class Categoria extends StatelessWidget {
  Color cor;
  String texto;
  Categoria({Key? key, required this.cor, required this.texto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: branco,
        ),
        height: 40,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              texto,
              style: TextStyle(
                fontSize: 18,
                color: cor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
