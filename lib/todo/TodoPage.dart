import 'package:flutter/material.dart';
import 'package:step1/domain/Todo.dart';

class TodoPage extends StatefulWidget {
  TodoPage({Key key, this.todo}) : super(key: key);

  final Todo todo;

  @override
  State<StatefulWidget> createState() {
    return new _TodoPageState();
  }
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    var _children = <Widget>[
      new Text("Finished: " + widget.todo.finished.toString()),
      new Text("Name: " + widget.todo.name),
    ];
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My Todo"),
      ),
      body: new Column(
        children: _children,
      ),
    );
  }
}
