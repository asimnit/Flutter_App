import "package:flutter/material.dart";
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "List View",
      home: Scaffold(
        appBar: AppBar(title: Text("Basic List View"),),
        body: getListview(),
      ),
    )
  );
}

Widget getListview(){
  ListView listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          //action
        },
      ),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("windows"),
        onTap: (){
          //action
        },
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text("Phone"),
        onTap: (){
          //action
        },
      ),
      Text("Yes anothe element in the list"),
      Container(color: Colors.red, height: 40.0,)
    ],
  );
  return listView;
}
