import 'package:flutter/material.dart';
import 'package:the_books/cores/cores.dart';
import 'package:the_books/widgets/avatar.dart';
import 'package:the_books/windows/homepage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
                      Center(
                        child: Container(
                          // color: preto,
                          width: 430,
                          child: Image.asset('assets/leitores.png'),
                        ),
                      ),
                      Row(
                        children: [
                          Avatar(
                            quant: '500K +',
                            texto: 'books',
                          ),
                          Avatar(
                            quant: '30K',
                            texto: 'reviews',
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 37),
                        child: Container(
                          width: 280,
                          child: Text(
                            'Have you found your book yet?',
                            style: TextStyle(
                              fontSize: 33,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 37, right: 37),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.more_horiz,
                                    color: quaseAzulClaro,
                                    size: 40,
                                  ),
                                  Container(
                                    height: 10,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: azul,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: azul,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => HomePage(),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.chevron_right,
                                  color: branco,
                                  size: 50,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
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
