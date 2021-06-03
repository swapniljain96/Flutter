import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/sj.jpeg'),
            ),
            Text('Swapnil Jain',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.white,
                )),
            Text('MTech: IIIT-B',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                )),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.lightBlueAccent),
                  title: Text('+91-8871179151',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlueAccent))),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                  leading: Icon(Icons.email, color: Colors.lightBlueAccent),
                  title: Text('swapnil.jain96@gmail.com',
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        letterSpacing: 1.0,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
