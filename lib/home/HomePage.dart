import 'package:flutter/material.dart';

//place: "/"
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final Text headerText = new Text("Header");
    var header = new DrawerHeader(child: headerText);

    var item1ButtonText = new Text("Sandy Shores");

    var item1Text = new FlatButton(
      textTheme: ButtonTextTheme.accent,
      child: item1ButtonText,
      onPressed: _onItem1Pressed,
    );

    var children = [header, item1Text];
    var listView = new ListView(
      children: children,
    );

    var drawer = new Drawer(
      child: listView,
    );
    return new Scaffold(
      drawer: drawer,
      appBar: new AppBar(
        title: new Text("My Home Page"),
      ),
      body: new Center(
        child: new Container(
          padding: EdgeInsets.all(48.0),
          margin: EdgeInsets.all(8.0),
          foregroundDecoration: new BoxDecoration(shape: BoxShape.circle),
          color: Color.fromARGB(22, 255, 153, 51),
          child: new RaisedButton(
            child: new Text("My Todos"),
            onPressed: _onPressed,
          ),
        ),
      ),
    );
  }

  void _onPressed() {
    Navigator.of(context).pushNamed("/todos");
  }

  void _onItem1Pressed() {
    print("Item 1 Pressed - Sandy Shores");
  }
}
