import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tela_de_login/models/page_manager.dart';

// ignore: must_be_immutable
class SecondaryBotton extends StatefulWidget {
  SecondaryBotton({this.page, this.title, this.icon});

  final IconData icon;
  int page;
  String title;

  @override
  State<SecondaryBotton> createState() => _SecondaryBottonState();
}

class _SecondaryBottonState extends State<SecondaryBotton> {
  bool onOff = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<PageManager>().setPage(widget.page);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.blueAccent, shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(8)),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            width: 230,
            height: 200,
            child: Center(
              child: Icon(
                widget.icon,
                size: 100.0,
                color: onOff ? Colors.yellow : Colors.grey,
              ),
            ),
          ),
          ElevatedButton(
            child: onOff
                ? Text(
                    'ON',
                    //style: TextStyle(color: Colors.black),
                  )
                : Text(
                    'OFF',
                    //style: TextStyle(color: Colors.black),
                  ),
            style: ElevatedButton.styleFrom(
              primary: onOff ? Colors.pink : Colors.grey,
              fixedSize: const Size(150, 35),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            onPressed: onOff
                ? () {
                    setState(() {
                      onOff = false;
                    });
                  }
                : () {
                    setState(() {
                      onOff = true;
                    });
                  },
          ),
        ],
      ),
    );
  }
}
