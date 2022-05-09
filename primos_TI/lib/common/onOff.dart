import 'package:flutter/material.dart';

class OnOff extends StatefulWidget {
  //const OnOff({ Key? key }) : super(key: key);

  @override
  State<OnOff> createState() => _OnOffState();
}

class _OnOffState extends State<OnOff> {
  bool onOff = true;

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      child: onOff ? Text('ON') : Text('OFF'),
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
          : (){
             setState(() {
                onOff = true;
              });
          },
    );
  }
}
