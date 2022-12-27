import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poojamathpuzzle/main.dart';

class page4 extends StatefulWidget {
  const page4({Key? key}) : super(key: key);

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Select Puzzle",
                style: TextStyle(fontSize: 40, color: Colors.blue)),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("images/lock.png"),
                    )),
                    // child: Text("{$index}"),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
