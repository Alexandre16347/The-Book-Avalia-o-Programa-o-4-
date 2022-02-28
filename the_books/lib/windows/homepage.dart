import 'package:flutter/material.dart';
import 'package:the_books/cores/cores.dart';
import 'package:the_books/widgets/cards.dart';
import 'package:the_books/widgets/categoria.dart';
import 'package:the_books/windows/secondpage.dart';
import 'package:the_books/windows/threepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 35,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 110),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text(
                                'Search',
                                style: TextStyle(
                                  color: cinza,
                                  fontSize: 40,
                                ),
                              ),
                              const Text(
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
                              child: const Icon(
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
                                Categoria(cor: quaseRoxo, texto: 'Comics'),
                              ],
                            )),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 24, left: 37),
                        child: Text(
                          'Popular category',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
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
                      const Padding(
                        padding: EdgeInsets.only(top: 24, left: 37),
                        child: Text(
                          'Last read',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
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
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30),
                                      topLeft: Radius.circular(30),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/mulherLendo.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                  ),
                                  // ignore: sized_box_for_whitespace
                                  child: Container(
                                    height: 180,
                                    width: 150,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        const Text(
                                          'DESING',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: cinza,
                                          ),
                                        ),
                                        const Text(
                                          'My forecourse in the Bauhaus',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: preto,
                                          ),
                                        ),
                                        const Text(
                                          'by ohannes Itten',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: cinza,
                                          ),
                                        ),
                                      ],
                                    ),
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
                      const Icon(
                        Icons.space_dashboard_rounded,
                        color: azul,
                        size: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ThreePage(),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.remove_red_eye,
                          color: cinza,
                          size: 30,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SecondPage(),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.person,
                          color: cinza,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
