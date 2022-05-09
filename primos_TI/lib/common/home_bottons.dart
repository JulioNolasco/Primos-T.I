import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tela_de_login/models/page_manager.dart';

class HomeBottons extends StatelessWidget {
  HomeBottons({this.title0, this.title1, this.page});
  String title0;
  final String title1;
  final int page;
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<PageManager>().setPage(page);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.blueAccent, shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(8)),
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            width: 300,
            height: 130,
            child: Center(
              child: Text(
                title0,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
