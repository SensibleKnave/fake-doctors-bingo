import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          title: Center(
            child: Text('Fake Doctors, Real Friends Bingo',
              style: TextStyle(
                fontSize: 20.0,
              )
            ),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 5,
          children: List.generate(25, (index) {
            return Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all (5.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey[600],
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: Text(
                '/$index',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
