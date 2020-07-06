import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_interest_calculator/appScreens/firstScreen.dart';
import 'package:simple_interest_calculator/appScreens/secondScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Simple interest Calculator",
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/SI calculator': (context) => Calculator(),
      '/CI calculator': (context) => CIcalculator(),
    },
    theme: ThemeData(
      primaryColor: Colors.indigo,
      accentColor: Colors.indigoAccent,
      brightness: Brightness.dark,
    ),
  ));
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  var calculators = ['SI calculator', 'CI calculator'];
  var curr = 'SI calculator';

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Select Calculator"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: DropdownButton<String>(
          items: calculators.map((String item) {
            return DropdownMenuItem(
              value: item,
              child: Text(item),
            );
          }).toList(),
          value: curr,
          onChanged: (String selected) {
            setState(() {
              dropdownaction(selected);
            });
          },
        ),
      ),
    );
  }

  void dropdownaction(String selected) {
    this.curr = selected;
    Navigator.pushNamed(context, '/$curr');
  }
}
