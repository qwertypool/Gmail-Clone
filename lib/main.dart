// import 'package:demo3/tabs/exg.dart';
import 'package:demo3/tabs/frontpage.dart';
// import 'package:demo3/tabs/intro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: FrontPage()
    );
  }
}
