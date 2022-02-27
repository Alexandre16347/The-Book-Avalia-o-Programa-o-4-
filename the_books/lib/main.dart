import 'package:flutter/material.dart';
import 'package:the_books/cores/cores.dart';
import 'package:the_books/widgets/cards.dart';
import 'package:the_books/widgets/categoria.dart';

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
          backgroundColor: backround,
          body: Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Search',
                                style: TextStyle(
                                  color: cinza,
                                  fontSize: 40,
                                ),
                              ),
                              Text(
                                'your book',
                                style: TextStyle(
                                    color: preto,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: amarelo,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              width: 60,
                              height: 60,
                              child: Icon(
                                Icons.notifications,
                                size: 25,
                                color: azul,
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Categoria(cor: azul, texto: 'Desing'),
                                Categoria(cor: quasePreto, texto: 'Detectives'),
                                Categoria(cor: quaseRoxo, texto: 'Comics')
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 37),
                        child: Text(
                          'Popular category',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Cards(
                                icone: Icons.camera_alt,
                                titulo: 'Photo',
                                num: 12,
                                corBackground: azul,
                              ),
                              Cards(
                                icone: Icons.edit,
                                titulo: 'Story',
                                num: 113,
                                corBackground: null,
                              ),
                              Cards(
                                icone: Icons.person,
                                titulo: 'Perfil',
                                num: 1,
                                corBackground: null,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 22),
                        child: Center(
                          child: Container(
                            height: 180,
                            width: 350,
                            decoration: BoxDecoration(
                              color: branco,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 180,
                                  width: 175,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        topLeft: Radius.circular(30)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/mulherLendo.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Container(
                                  height: 180,
                                  width: 175,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center ,
                                    children: [
                                      Text(
                                        'Ai vou eu',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: branco,
                    ),
                    height: 80,
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.space_dashboard_rounded,
                          color: azul,
                          size: 30,
                        ),
                        Icon(
                          Icons.remove_red_eye,
                          color: cinza,
                          size: 30,
                        ),
                        Icon(
                          Icons.person,
                          color: cinza,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
