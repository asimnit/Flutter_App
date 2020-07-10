import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wood_calculator/appScreen/secondScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Wood_Calculator',
    initialRoute: '/',
    routes: {
      '/': (context) => Cuboid_calculator(),
      '/second': (context) => Log_calculator(),
    },
    theme: ThemeData(
      primaryColor: Colors.indigo,
      accentColor: Colors.indigoAccent,
      brightness: Brightness.dark,
    ),
  ));
}

class Cuboid_calculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Cuboid_calculator_state();
  }
}

class _Cuboid_calculator_state extends State<Cuboid_calculator> {
  var _formkey = GlobalKey<FormState>();
  TextEditingController _hfcontroller = TextEditingController();
  TextEditingController _hicontroller = TextEditingController();
  TextEditingController _lfcontroller = TextEditingController();
  TextEditingController _licontroller = TextEditingController();
  TextEditingController _wfcontroller = TextEditingController();
  TextEditingController _wicontroller = TextEditingController();
  TextEditingController _pcontroller = TextEditingController();
  var _display = '';

  @override
  void initState() {
    super.initState();
    _hfcontroller = TextEditingController(text: "0");
    _hicontroller = TextEditingController(text: "0");
    _lfcontroller = TextEditingController(text: "0");
    _licontroller = TextEditingController(text: "0");
    _wfcontroller = TextEditingController(text: "0");
    _wicontroller = TextEditingController(text: "0");
    _pcontroller = TextEditingController(text: "1");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Container(
        alignment: Alignment.topCenter,
        child: Text("Cubiod Wood"),
      ),
    ),
      body: Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Form(
          key: _formkey,
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                child: RaisedButton(
                  child: Text(
                    "পরিবর্তন",
                    style: TextStyle(color: Colors.white),
                  ),
                  elevation: 30.0,
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                ),
              ),
              ImageAsset(),
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
                            hintText: 'input height in feet',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "Please enter hieght in feet";
                          }
                        },
                        controller: _hfcontroller,
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
                            hintText: 'input height in inches',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "Please enter height in inches";
                          }
                        },
                        controller: _hicontroller,
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
                          "প্রস্থ:",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
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
                            hintText: 'input width in feet',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "Please enter width in feet";
                          }
                        },
                        controller: _wfcontroller,
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
                            hintText: 'input width in inches',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "Please enter width in inches";
                          }
                        },
                        controller: _wicontroller,
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
                          "উচ্চতা:",
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
                            labelText: 'Feet',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'input length in feet',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "Please enter length in feet";
                          }
                        },
                        controller: _lfcontroller,
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
                            hintText: 'input legth in inches',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "Please enter length in inches";
                          }
                        },
                        controller: _licontroller,
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
                        controller: _pcontroller,
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
                          if (_formkey.currentState.validate()) {
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

  String _calculate() {
    double hi = double.parse(_hicontroller.text);
    double hf = double.parse(_hfcontroller.text);
    double li = double.parse(_licontroller.text);
    double lf = double.parse(_lfcontroller.text);
    double wi = double.parse(_wicontroller.text);
    double wf = double.parse(_wfcontroller.text);
    double p = double.parse(_pcontroller.text);
    double a = hf + (hi / 12);
    double b = lf + (li / 12);
    double c = wf + (wi / 12);
    double v = a * b * c * p;
    if (p == 1)
      return "Volume = $v কিবি";
    else
      return "Price = $v টাকা";
  }

  void _reset() {
    _hicontroller.text = '0';
    _hfcontroller.text = '0';
    _licontroller.text = '0';
    _lfcontroller.text = '0';
    _wicontroller.text = '0';
    _wfcontroller.text = '0';
    _pcontroller.text = '1';
    this._display = '';
  }

  Widget ImageAsset() {
    AssetImage im = AssetImage('images/money.png');
    Image assetImage = Image(image: im, width: 150, height: 150);
    return assetImage;
  }
}
