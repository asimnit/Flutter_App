import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class Log_calculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Log_calculator_state();
  }
}

class _Log_calculator_state extends State<Log_calculator> {
  var _Formkey = GlobalKey<FormState>();
  TextEditingController _Pfcontroller = TextEditingController();
  TextEditingController _Picontroller = TextEditingController();
  TextEditingController _Lfcontroller = TextEditingController();
  TextEditingController _Licontroller = TextEditingController();
  TextEditingController _Pricecontroller = TextEditingController();
  var _display = '';
  @override
  void initState() {
    super.initState();
    _Pfcontroller = TextEditingController(text: "0");
    _Picontroller = TextEditingController(text: "0");
    _Lfcontroller = TextEditingController(text: "0");
    _Licontroller = TextEditingController(text: "0");
    _Pricecontroller = TextEditingController(text: "1");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            children: <Widget>[
              Container(
                width: 79.0,
              ),
              Text("Log Wood"),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Form(
          key: _Formkey,
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Text(
                  "G",
                  style:
                      TextStyle(fontSize: 150.0, color: Colors.lightBlueAccent),
                ),
              ),
              Container(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        child: Text(
                          "গোলাই:",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 10.0,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'Feet',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'input feet',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "Please enter";
                          }
                        },
                        controller: _Pfcontroller,
                      ),
                    ),
                    Container(
                      width: 10.0,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'inches',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'input inches',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "Please enter";
                          }
                        },
                        controller: _Picontroller,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        child: Text(
                          "দৈর্ঘ্য:",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 10.0,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'Feet',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'input feet',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "Please enter";
                          }
                        },
                        controller: _Lfcontroller,
                      ),
                    ),
                    Container(
                      width: 10.0,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'inches',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'input inches',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "Please enter";
                          }
                        },
                        controller: _Licontroller,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        child: Text(
                          "দাম:",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.cyanAccent,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 10.0,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'Rupees',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'input price',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "Please enter price";
                          }
                        },
                        controller: _Pricecontroller,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        child: Text(
                          "Calculate",
                          style: TextStyle(color: Colors.white),
                        ),
                        elevation: 30.0,
                        onPressed: () {
                          if (_Formkey.currentState.validate()) {
                            setState(() {
                              this._display = _calculate();
                            });
                          }
                        },
                      ),
                    ),
                    Expanded(
                      child: RaisedButton(
                        child: Text(
                          "Reset",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.indigo,
                        elevation: 30.0,
                        onPressed: () {
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
                padding: EdgeInsets.only(top: 30.0),
                alignment: Alignment.center,
                child: Text(
                  _display,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.deepOrange),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  String _calculate()
  {
    double pi = double.parse(_Picontroller.text);
    double pf = double.parse(_Pfcontroller.text);
    double li = double.parse(_Licontroller.text);
    double lf = double.parse(_Lfcontroller.text);
    double price = double.parse(_Pricecontroller.text);
    double p = pf + (pi / 12);
    double l = lf + (li / 12);
    double conv = (p/4)*(p/4)*l*price;
    double actu = (p*p*l*price)/(4*3.14592653589);
    String actual = actu.toStringAsFixed(3);
    String conven = conv.toStringAsFixed(3);
    if(price == 1)
    return "প্রচলিত: $conven কিবি     সঠিক: $actual কিবি";
    else
      return "প্রচলিত: $conven টাকা     সঠিক: $actual টাকা";
  }
  void _reset(){
    _Picontroller.text = '0';
    _Pfcontroller.text = '0';
    _Licontroller.text = '0';
    _Lfcontroller.text = '0';
    _Pricecontroller.text = '1';
    this._display = '';
  }
}
