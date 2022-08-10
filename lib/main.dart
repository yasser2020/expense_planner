import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text('Flutter App')),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              
              child: Card(
                child: Text("Chart"),
                color: Colors.blue,
              ),
            ),
            Card(
              child: Text("List of TX"),
            )
          ],
        ),
      )
    ;
  }
}