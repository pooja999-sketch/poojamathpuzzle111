import 'package:flutter/material.dart';
import 'package:poojamathpuzzle/page2.dart';
import 'package:poojamathpuzzle/page4.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: mathpuzzle1(),
  ));
}

class mathpuzzle1 extends StatefulWidget {
  const mathpuzzle1({Key? key}) : super(key: key);

  static int? puzzlenum;
  static SharedPreferences? prefs;




  static List answer = [
    "10",
    "25",
    "6",
    "14",
    "128",
    "7",
    "50",
    "1025",
    "100",
    "3"
  ];

  static List pass=[];

  @override
  State<mathpuzzle1> createState() => _mathpuzzle1State();
}

class _mathpuzzle1State extends State<mathpuzzle1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    share();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Math Puzzle",
          style: TextStyle(fontSize: 30, color: Colors.black),
        )),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.jpg"), fit: BoxFit.fill),
            ),
            child: Center(
              child: Container(
                margin: EdgeInsets.all(50),
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
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              mathpuzzle1.puzzlenum!+1;
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
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return page4();
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

  Future<void> share() async {
    mathpuzzle1.prefs = await SharedPreferences.getInstance();
      mathpuzzle1.puzzlenum = mathpuzzle1.prefs!.getInt("level")?? 0;

      for(int i=0;i<mathpuzzle1.answer.length;i++)
       {
         mathpuzzle1.pass.add(mathpuzzle1.prefs!.getString("status$i")??"pending");
         print("==============${mathpuzzle1.pass}");

       }

   }
}
