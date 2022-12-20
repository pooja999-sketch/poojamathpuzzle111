import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("images/background.jpg"))),
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30,bottom: 35),
                child: Text("PUZZLE 1 COMPLATED",style: TextStyle(fontSize: 30,color: Colors.blue)),
              ),),
            Image.asset("images/trophy.png"),

            Center(
              child: Container(padding: EdgeInsets.all(15),
                child: Text("CONTINUE",style: TextStyle(fontSize: 20)),
                decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.grey,Colors.white,Colors.grey]),borderRadius: BorderRadius.circular(10),),
              ),
            )


          ],



        ),
      ),
    );
  }
}
