import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.deepPurple,
        padding: EdgeInsets.all(25.0),

        /*margin: EdgeInsets.all(30.0),
        padding: EdgeInsets.all(30.0),
        height: 100.0,
        width: 100.0,*/
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Spice Zet",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30.0,
                        fontFamily: 'Raleway',
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Text(
                    "From Mumbai to Bangalore via New Delhi",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: 'Raleway',
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "AIR India",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30.0,
                        fontFamily: 'Raleway',
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Text(
                    "From Jaipur to Goa",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: 'Raleway',
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            FlightAssetImage(),
            FlightBookButton(),
          ],
        ),
      ),
    );
  }
}
class FlightAssetImage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    AssetImage im = AssetImage('images/c.jpg');
    Image image = Image(image: im, width: 20.0, height: 30.0,);
    return Container(child: image,);
  }
}

class FlightBookButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: RaisedButton(
        color: Colors.deepOrange,
        child: Text(
          "Book Your Flight",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 7.0,
        onPressed: () => bookFlight(context)
      ),
    );
  }
}

void bookFlight(BuildContext context){
  var alertdialog = AlertDialog(
    title: Text("Flight Booked Succesfully"),
    content: Text("Have a Nice Journey"),
  );
  showDialog(
      context: context,
      builder: (BuildContext){
        return alertdialog;
      }
  );
}
