import 'dart:async';

import 'package:flutter/material.dart';
import 'package:step1/domain/Todo.dart';
import 'package:step1/todo/TodoPage.dart';

// place: "/todos"
class TodosPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _TodosPageState();
  }
}

class _TodosPageState extends State<TodosPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My Todos"),
      ),
      body: new RefreshIndicator(
          child: new ListView.builder(itemBuilder: _itemBuilder),
          onRefresh: _onRefresh),
    );
  }

  Future<Null> _onRefresh() {
    Completer<Null> completer = new Completer<Null>();
    Timer timer = new Timer(new Duration(seconds: 3), () {
      completer.complete();
    });
    return completer.future;
  }

  Widget _itemBuilder(BuildContext context, int index) {
    Todo todo = getTodo(index);
    return new TodoItemWidget(todo: todo);
  }

  Todo getTodo(int index) {
    return new Todo(false, "Todo $index");
  }
}

class TodoItemWidget extends StatefulWidget {
  final Todo todo;

  TodoItemWidget({Key key, this.todo}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new _TodoItemWidgetState();
  }
}

class _TodoItemWidgetState extends State<TodoItemWidget> {
  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: new Text("-"),
      title: new Text(widget.todo.name),
      onTap: _onTap,
    );
  }

  void _onTap() {
    Route route = new MaterialPageRoute(
      settings: new RouteSettings(name: "todos/todo"),
      builder: (BuildContext context) => new TodoPage(
            todo: widget.todo,
          ),
    );
    Navigator.push(context, route);
  }
}
