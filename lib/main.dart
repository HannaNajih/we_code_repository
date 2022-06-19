import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(helo_kurdistan());
  //my first codebase
}

class helo_kurdistan extends StatelessWidget {
  static const primaryColor = Color.fromARGB(255, 15, 87, 27);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Kurdish Flag"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150.0,
              width: 280.0,
              color: Colors.transparent,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: new Center(
                    child: new Image.asset(
                      'images/Kurdistan_Flag.jpg',
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
                child: Text(" Hello Kurdistan",
                    style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                        color: Colors.purpleAccent)))
          ],
        ),
      ),
    ));
  }
}
