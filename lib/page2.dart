import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:poojamathpuzzle/main.dart';
import 'package:poojamathpuzzle/page3.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  static List numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"];
  String ans = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/gameplaybackground.jpg"),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 2),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                "Skip\nAre you sure You want to skip this level?You can play skipped levels later by clicking on PLUZZLES menu from main screen",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Cancle")),
                                TextButton(
                                    onPressed: () {
                                      setState(() {
                                        mathpuzzle1.puzzlenum++;
                                        Navigator.pop(context);
                                      });
                                    },
                                    child: Text("Ok"))
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/skip.png"))),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 70,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/level_board.png"))),
                      child: Center(
                          child: Text("Puzzle ${mathpuzzle1.puzzlenum}",
                              style: TextStyle(
                                  fontSize: 22, color: Colors.black))),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/hint.png"))),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "images/p${mathpuzzle1.puzzlenum}.png"))),
                ),
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 40,
                          width: 190,
                          color: Colors.white,
                          child: Center(
                              child: Text("${ans}",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ))),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            ans = ans
                                .substring(0, ans.length - 1);
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/delete.png"))),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (ans == mathpuzzle1.answer[mathpuzzle1.puzzlenum - 1]) {
                              mathpuzzle1.prefs!.setInt("level", mathpuzzle1.puzzlenum);

                              mathpuzzle1.pass[mathpuzzle1.puzzlenum - 1]='success';
                              mathpuzzle1.prefs!.setString(("Level ${mathpuzzle1.puzzlenum - 1}"), "success");



                              mathpuzzle1.pass[mathpuzzle1.puzzlenum - 1]="active";
                              mathpuzzle1.prefs!.setString("active", "active");





                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return page3();

                                },
                              ));
                            } else {
                              Fluttertoast.showToast(
                                  msg: "Wrong!!!",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.grey,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                            }
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 90,
                          child: Center(
                            child: Text("SUBMIT",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 15, left: 2, bottom: 15),
                      height: 50,
                      child: GridView.builder(
                        // shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: numbers.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                ans =
                                    ans + numbers[index];
                              });
                              // print("=====================$ans");
                            },
                            child: Container(
                              child: Center(
                                child: Text(
                                  "${numbers[index]}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white)),
                              margin: EdgeInsets.all(3),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
