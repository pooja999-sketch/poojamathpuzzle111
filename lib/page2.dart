import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/gameplaybackground.jpg"),
                fit: BoxFit.fill)),

        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, top: 90, bottom: 320, right: 20),
          child:
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/p1.png"), fit: BoxFit.fill)),
          ),

        ),
      ),
    );
  }
}
