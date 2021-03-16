import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Column(
        children: [titleSection],
      ),
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(children: [
    Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              'Oeschinen Lake Campground',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )),
        Text(
          'Kandersteg, Switzerland',
          style: TextStyle(
            color: Colors.grey[500],
          ),
        ),
      ],
    )),
    Icon(
      Icons.star,
      color: Colors.red[500],
    ),
    Text('41'),
  ]),
);
