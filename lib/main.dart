import 'package:flutter/material.dart';
import 'package:step1/home/HomePage.dart';
import 'package:step1/todoslist/TodoListPage.dart';

void main() {
  runApp(new MyApp());
}

final ThemeData _themeData = new ThemeData(
  primaryColor: Colors.blue,
);

//root MaterialApp
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var _routes = <String, WidgetBuilder>{
      "/todos": (BuildContext context) => new TodosPage(),
      //add another page
    };
    return new MaterialApp(
      title: "My App",
      theme: _themeData,
      home: new HomePage(),
      routes: _routes,
    );
  }
}
