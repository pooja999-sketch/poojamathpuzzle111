import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: mathpuzzle1(),));
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
      body:  Container(

             height: double.infinity,
              width: double.infinity,

              decoration: const BoxDecoration(color:Colors.yellow,
                 image: DecorationImage(image: AssetImage("images/background.jpg"),fit: BoxFit.fill),),


                child: Center(

                           child: Container(
                       margin: EdgeInsets.all(100),
                               height: double.infinity,
                                width: double.infinity,
                                  decoration: BoxDecoration(
                                     color:Colors.black,
                                              image: DecorationImage(image: AssetImage("images/blackboard_main_menu.png"),fit: BoxFit.fill),),
                             child: Padding(
                               padding: const EdgeInsets.only(left: 50,top: 300),
                               child: Column(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.all(20),
                                     child: TextButton(onPressed: (

                                         ) {

                                       }, child: Center(child: Text("continue",style: TextStyle(fontSize: 40,color: Colors.white),))
                                     ),
                                   ),


                                    TextButton(onPressed: () {

                                    }, child: Center(child: Text("puzzles",style: TextStyle(fontSize: 40,color: Colors.white),)))



                                 ],
                               ),
                             ),



                           ),
                         )








  
      )
      );
  }
}
