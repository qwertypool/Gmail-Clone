import 'package:flutter/material.dart';
// import 'package:demo3/tabs/gmail.dart';
import 'package:demo3/tabs/compose.dart';

class FloatingActionButtons extends StatefulWidget {
  FloatingActionButtons({Key key}) : super(key: key);
  @override
  _FloatingActionButtonsState createState() => _FloatingActionButtonsState();
}
class _FloatingActionButtonsState extends State<FloatingActionButtons> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (builder) => Compose()));
        },  
      label: Text('Compose'),
      icon: Icon(Icons.edit),
      backgroundColor: Colors.white,
      foregroundColor: Colors.red,
      tooltip: 'Upload',
      );
    
  }
}