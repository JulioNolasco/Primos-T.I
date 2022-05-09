import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:tela_de_login/common/onOff.dart';
//import 'package:tela_de_login/common/secondary_button.dart';
import 'package:tela_de_login/models/page_manager.dart';
import 'package:tela_de_login/screens/bodyScreen.dart';
import 'package:tela_de_login/screens/secundaryScreen.dart';
//import '../common/home_bottons.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();

  bool onOff = false;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PageManager(pageController),
      child: PageView(physics: const NeverScrollableScrollPhysics(), controller: pageController, children: [
        Scaffold(
          appBar: AppBar(
            title: Text('Primos.TI'),
            centerTitle: true,
          ),
          body: BodyScreen(),
        ),
        //tentar passar a quantidade de botões para a segunda tela!!!!
        //sala
        SecundaryScreen(
          icon: [Icons.add],
          title: 'SALA',
        ),
        //cozinha
        SecundaryScreen(
          icon: [Icons.add],
          title: 'COZINHA',
        ),
        //quarto julio
        SecundaryScreen(
          icon: [Icons.lightbulb, Icons.tv, Icons.air_outlined, Icons.speaker_group],
          title: 'QUARTO - JULIO',
        ),
        //quarto italo
        SecundaryScreen(
          icon: [Icons.add],
          title: 'QUARTO - ITALO',
        ),
        //quarto portuga
        SecundaryScreen(
          icon: [Icons.add],
          title: 'QUARTO - PORTUGA',
        ),
            //varanda
        SecundaryScreen(
          icon: [Icons.add],
          title: 'VARANDA',
        )
      ]),
    );
  }
}
