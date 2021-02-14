import 'package:flutter/material.dart';
//import 'package:demo3/tabs/gmail.dart';
import 'package:demo3/tabs/mails.dart';
import 'package:demo3/tabs/meet.dart';
import 'package:demo3/tabs/drawer.dart';
import 'package:demo3/tabs/appbar.dart';
import 'package:demo3/tabs/floatingbtn.dart';

class Test extends StatefulWidget {
  const Test({Key key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {

 int _currentIndex = 0;
 final List<Widget> _children = [Mails(),Meet()];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawers(),
      appBar: Appbars(),
      floatingActionButton: FloatingActionButtons(),

      body: _children[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
      
      fixedColor: Colors.red,
       onTap: onTabTapped, // new
       currentIndex: _currentIndex, // new
       items: [
         new BottomNavigationBarItem(
           icon: Padding(
             padding: EdgeInsets.fromLTRB(0.0,4.0,0.0,0),
             child: new Stack(
            children: <Widget>[
             new Icon(Icons.mail,size: 35,),
      new Positioned(
        
        right: 0,
        top: 0.0,
        child: new Container(
          padding: EdgeInsets.all(1),
          decoration: new BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
          ),
          constraints: BoxConstraints(
              minWidth: 15,
              minHeight: 15,
          ),
          child: new Text(
              '9+',
              style: new TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
          ),
        ),
      )
    ],
  ),
           ),
           label: 'Mail',
          //  backgroundColor: red,
         ),
         new BottomNavigationBarItem(
           icon: Icon(Icons.video_call,size:35.0),
           label: 'Meet',
         )
       ],
     ),
    );
  }
  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}




