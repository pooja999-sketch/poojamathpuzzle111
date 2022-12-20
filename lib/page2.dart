import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poojamathpuzzle/page3.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  List numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    0,
  ];
  int currentnumber = 0;

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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/skip.png"))),
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
                          child: Text("Puzzle 1",
                              style: TextStyle(
                                  fontSize: 30, color: Colors.black))),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 70,
                      width: 70,
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
                      image:
                          DecorationImage(image: AssetImage("images/p1.png"))),
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Expanded(
                          child: Container(
                            height: 40,
                            width: 600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/delete.png"))),
                        ),
                      ),
                      Expanded(
                        child: InkWell(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return page3();

                          },));
                        },
                          child: Container(
                            height: 40,
                            width: 100,
                            child: Text("SUBMIT",
                                style:
                                    TextStyle(fontSize: 30, color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 70,
                    child: GridView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: numbers.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              currentnumber = numbers[index];
                            });
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                "$index",
                                style: TextStyle(color: Colors.white,fontSize: 20,),
                              ),

                            ),
                            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                            margin: EdgeInsets.all(3),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
              height: 150,
              width: double.infinity,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }




}
