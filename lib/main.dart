import 'package:flutter/material.dart';

void main() {
  runApp(helo_kurdistan());
  //my first codebase
}

class helo_kurdistan extends StatelessWidget {
  const helo_kurdistan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("hello kurdistan"),
        ),
      ),
    );
  }
}
