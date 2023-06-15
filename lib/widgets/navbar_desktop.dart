import 'package:flutter/material.dart';
import 'package:landing_page_soma/pages/home/redes.dart';
import '../helpers/utils.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.8),
          child: Row(
            children: [
              Image.asset(
                'assets/logo_text.png',
                color: verde1,
                height: 70,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Igrejas parceiras',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: verde1,
                    fontFamily: 'ProximaSoft',
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(10),
                child: const Text(
                  'Contato',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: verde1,
                    fontFamily: 'ProximaSoft',
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.all(150),
                    child: Column(
                      children: [
                        const Text(
                          'Toda programação da Igreja na palma \nda sua mão!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'ProximaSoft',
                            fontWeight: FontWeight.w800,
                            fontSize: 25,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/big_church.png',
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: const EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Text(
                                    'Aqui sua igreja pode:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'ProximaSoft',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'Programar eventos',
                                    style: TextStyle(
                                      height: 3,
                                      color: bege2,
                                      fontFamily: 'ProximaSoft',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'Criar e gerenciar grupos',
                                    style: TextStyle(
                                      color: bege2,
                                      fontFamily: 'ProximaSoft',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'Adicionar e gerenciar membros',
                                    style: TextStyle(
                                      height: 3,
                                      color: bege2,
                                      fontFamily: 'ProximaSoft',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 50),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: const EdgeInsets.all(10),
                              child:const Column(

                              children: [
                                Text(
                                  'Aqui o cristão(membro) pode:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'ProximaSoft',
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Encontrar Igrejas',
                                  style: TextStyle(
                                    height: 3,
                                    color: bege2,
                                    fontFamily: 'ProximaSoft',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Ver a programação das igrejas',
                                  style: TextStyle(
                                    color: bege2,
                                    fontFamily: 'ProximaSoft',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Participar de grupos',
                                  style: TextStyle(
                                    height: 3,
                                    color: bege2,
                                    fontFamily: 'ProximaSoft',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),),
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Image.asset(
                          'assets/cordeiro.png',
                          color: Colors.black,
                          height: 60,
                        ),
                        const Text(
                          'Venha Sômar com a gente!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'ProximaSoft',
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: Redes(),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
