import 'package:flutter/material.dart';
import 'package:tela_de_login/common/secondary_button.dart';

// ignore: must_be_immutable
class SecundaryScreen extends StatefulWidget {
  String title;
  List<dynamic> icon = [];
  SecundaryScreen({Key key, this.icon, this.title}) : super(key: key);
  @override
  State<SecundaryScreen> createState() => _SecundaryScreenState();
}

class _SecundaryScreenState extends State<SecundaryScreen> {
  //@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // passar o nome do botao selecionado!!!
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
            itemCount: widget.icon.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  SecondaryBotton(
                    page: 0,
                    icon: widget.icon[index],
                  ),
                ],
              );
            }),
      ),
    );
  }
}
