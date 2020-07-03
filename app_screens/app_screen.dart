import 'dart:math';

import "package:flutter/material.dart";
class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Material(
     color: Colors.greenAccent,
     child: Center(
       child: Text(
         generateLuckynumber(),
         textDirection: TextDirection.ltr,
         style: TextStyle(color: Colors.white, fontSize: 40.0),
       ),
     ),
   );
  }

  String generateLuckynumber(){
    var random = Random();
    int n = random.nextInt(10);
    return "Your lucky number:$n";
  }
}
