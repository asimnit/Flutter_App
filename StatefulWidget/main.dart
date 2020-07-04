import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Stateful Widget",
        home: FavouriteCity(),
      )
  );
}

class FavouriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavouriteCityState();
  }
}

class _FavouriteCityState extends State<FavouriteCity> {
  String nameCity = '';
  var _currencies = ["Rupees", "Dollars", "Pounds"];
  String currentSelectedValue = "Rupees";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("An Exaple of StatefulWidget"),),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String string) {
                setState(() {
                  nameCity = string;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("Your fovourite City is $nameCity",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            DropdownButton<String>(
              items: _currencies.map((String DropdownItem) {
                return DropdownMenuItem<String>(
                  value: DropdownItem,
                  child: Text(DropdownItem),
                );
              },).toList(),
              onChanged: (String Newvalue) =>dropDownSelected(Newvalue),
              value: currentSelectedValue,
            )
          ],
        ),)
      ,
    );
  }

  void dropDownSelected(String NewSelected) {
    setState(() {
        currentSelectedValue = NewSelected;
    });
  }
}
