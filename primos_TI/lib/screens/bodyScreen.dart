import 'package:flutter/material.dart';
import '../common/home_bottons.dart';

class BodyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    width: 130,
                    height: 40,
                    decoration: BoxDecoration(color: Colors.blueAccent, shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        "AP - 202",
                        style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(15),
                  ),
                  HomeBottons(
                    title0: 'SALA',
                    page: 1,
                  ),
                  HomeBottons(
                    title0: 'COZINHA',
                    page: 2,
                  ),
                  HomeBottons(
                    title0: 'QUARTO - JULIO',
                    page: 3,
                  ),
                  HomeBottons(
                    title0: 'QUARTO - ITALO',
                    page: 4,
                  ),
                  HomeBottons(
                    title0: 'QUARTO - PORTUGA',
                    page: 5,
                  ),
                  HomeBottons(
                    title0: 'VARANDA',
                    page: 6,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
