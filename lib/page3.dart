import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poojamathpuzzle/main.dart';
import 'package:poojamathpuzzle/page2.dart';

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
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("images/background.jpg"))),
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30, bottom: 35),
                child: Text("Puzzle ${mathpuzzle1.puzzlenum} Complated",
                    style: TextStyle(fontSize: 30, color: Colors.blue)),
              ),
            ),
            Image.asset("images/trophy.png"),
            Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    mathpuzzle1.puzzlenum++;
                    mathpuzzle1.prefs!.setInt("level", mathpuzzle1.puzzlenum);
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return page2();
                      },
                    ));
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(10),
                  child: Text("CONTINUE", style: TextStyle(fontSize: 20)),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.grey, Colors.white, Colors.grey]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return mathpuzzle1();
                  },));
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(10),
                  child: Text("MAIN MENU", style: TextStyle(fontSize: 20)),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.grey, Colors.white, Colors.grey]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(10),
                child: Text("BYE PRO", style: TextStyle(fontSize: 20)),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.grey, Colors.white, Colors.grey]),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20, bottom: 35),
                child: Text("SHARE THIS PUZZLE",
                    style: TextStyle(fontSize: 30, color: Colors.blue)),
              ),
            ),
            Center(
              child: InkWell(
                  onTap: () {},
                  child: Container(
                      height: 50,
                      width: 60,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.grey, Colors.white, Colors.grey]),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("images/shareus.png")),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
