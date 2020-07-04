import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "List View",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Long List View"),
      ),
      body: getListview(),
    ),
  ));
}

List<String> getItems() {
  var items = List<String>.generate(100, (index) => "item$index");
  return items;
}

Widget getListview() {
  var itemlist = getItems();
  var listview = ListView.builder(itemBuilder: (context, index) {
    if (index < 100) {
      return ListTile(
        title: Text(itemlist[index]),
      );
    }
  });
  return listview;
}
