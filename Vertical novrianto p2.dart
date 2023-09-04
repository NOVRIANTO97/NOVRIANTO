import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'NOVRIANTO'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NOVRIANTO'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ElevatedButton(
              child: Text('BUTTON 1'),
              onPressed: () {},
              
            ),
            SizedBox(width: 18),
            ElevatedButton(
              child: Text('BUTTON 2'),
              onPressed: () {},
            ),
            SizedBox(width: 18),
            ElevatedButton(
              child: Text('BUTTON 3'),
              onPressed: () {},
            ),
            SizedBox(width: 18),
            ElevatedButton(
              child: Text('BUTTON 4'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}