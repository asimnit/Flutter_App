import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CIcalculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CIcalculator();
  }
}
class _CIcalculator extends State<CIcalculator> {
  var _display = " ";
  var _currencies = ["Rupees", "Pounds", "Dollars"];
  var curr = "Rupees";
  TextEditingController _principleController =  TextEditingController();
  TextEditingController _roiController = TextEditingController();
  TextEditingController _termController = TextEditingController();
  TextEditingController _notController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Compound Interest CIcalculator"),
        ),
        body: Container(
            margin: EdgeInsets.all(20),
            child: ListView(
              children: <Widget>[
                CIcalculatorimage(),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _principleController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        labelText: "Principle Amount",
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: "Enter principle e.g. 12000",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _roiController,
                    decoration: InputDecoration(
                        labelText: "Rate of Interest",
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: "In percent",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _notController,
                    decoration: InputDecoration(
                        labelText: "Number of time interest applied",
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: "e.g. 1",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          controller: _termController,
                          decoration: InputDecoration(
                              labelText: "Time periods",
                              labelStyle: TextStyle(color: Colors.white),
                              hintText: "In years",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        ),
                      ),
                      Container(width: 20.0,),
                      Expanded(
                        child: DropdownButton<String>(
                          items: _currencies.map(
                                (String dropdownitem) {
                              return DropdownMenuItem<String>(
                                value: dropdownitem,
                                child: Text(dropdownitem),
                              );
                            },
                          ).toList(),
                          value: curr,
                          onChanged: (String selected) => dropdownselected(selected),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:20.0),
                  child:  Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          child: Text("Calculate"),
                          onPressed: (){
                            setState(() {
                              this._display = _calculate();
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          color: Colors.black12,
                          child: Text("Reset"),
                          onPressed: (){
                            setState(() {
                              _reset();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(_display,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )));
  }

  Widget CIcalculatorimage() {
    AssetImage im = AssetImage('images/money.png');
    Image image = Image(
      image: im,
      height: 125.0,
      width: 125.0,
    );
    return Container(
      child: image,
    );
  }

  void dropdownselected(String selected) {
    setState(() {
      curr = selected;
    });
  }
  String _calculate(){
    double p = double.parse(_principleController.text);
    double t = double.parse(_termController.text);
    double r = double.parse(_roiController.text);
    double n = double.parse(_notController.text);
    double x = 1 +(r/(100*n));
    double y = n*t;
    double z = pow(x, y);
    double total = p*z;
    String display = "After $t years , your investment will be worth $total $curr";
    return display;
  }
  void _reset()
  {
    _principleController.text = '';
    _roiController.text = '';
    _termController.text = '';
    _notController.text = '';
    _display = '';
    curr = "Rupees";
  }
}
