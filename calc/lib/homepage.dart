import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var n1 = 0, n2 = 0, result = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void add() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      result = n1 + n2;
    });
  }

  void sub() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      result = n1 - n2;
    });
  }

  void mul() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      result = n1 * n2;
    });
  }

  void div() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      result = n1 ~/ n2;
    });
  }

  void cls() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Caculator"),
        ),
        body: new Container(
          padding: const EdgeInsets.all(40.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Output: $result",
                  style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold)),
              new Padding(padding: const EdgeInsets.only(bottom: 20.0)),
              new TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(hintText: "Enter Number 1"),
                  controller: t1),
              new Padding(padding: const EdgeInsets.only(bottom: 10.0)),
              new TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(hintText: "Enter Number 2"),
                  controller: t2),
              new Padding(padding: const EdgeInsets.only(top: 30.0)),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                        child: new Text("+"),
                        color: Colors.cyan,
                        onPressed: add),
                    new MaterialButton(
                        child: new Text("-"),
                        color: Colors.cyan,
                        onPressed: sub),
                  ]),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                        child: new Text("*"),
                        color: Colors.cyan,
                        onPressed: mul),
                    new MaterialButton(
                        child: new Text("/"),
                        color: Colors.cyan,
                        onPressed: div),
                  ]),
              new Padding(padding: const EdgeInsets.only(top: 30.0)),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                        child: new Text("Clear"),
                        color: Colors.cyan,
                        onPressed: cls),
                  ])
            ],
          ),
        ));
  }
}
