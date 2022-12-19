import 'package:flutter/material.dart';
import 'package:poojamathpuzzle/page2.dart';

void main() {
  runApp(MaterialApp(
    home: mathpuzzle1(),
  ));
}

class mathpuzzle1 extends StatefulWidget {
  const mathpuzzle1({Key? key}) : super(key: key);

  @override
  State<mathpuzzle1> createState() => _mathpuzzle1State();
}

class _mathpuzzle1State extends State<mathpuzzle1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Math Puzzle",style: TextStyle(fontSize: 30,color: Colors.black),)),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "images/background.jpg"),
                  fit: BoxFit.fill),
            ),
            child: Center(
              child: Container(
                margin: EdgeInsets.all(100),
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  //color:Colors.black,
                  image: DecorationImage(
                      image: AssetImage("images/blackboard_main_menu.png"),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return page2();
                            },
                          ));
                        },
                        child: Center(
                            child: Text(
                          "continue",
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ))),
                    SizedBox(height: 25),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return page2();
                            },
                          ));
                        },
                        child: Center(
                            child: Text(
                          "puzzles",
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        )))
                  ],
                ),
              ),
            )));
  }
}
