import 'package:flutter/material.dart';
import 'package:demo3/tabs/mails.dart';
import 'package:demo3/tabs/meet.dart';
import 'package:demo3/tabs/drawer.dart';
import 'package:demo3/tabs/appbar.dart';
import 'package:flutter/rendering.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key key}) : super(key: key);

  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {

 int _currentIndex = 0;
 final List<Widget> _children = [Mails(),Meet()];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawers(),
      appBar: Appbars(index:_currentIndex),
      //floatingActionButton: _currentIndex==0?FloatingActionButtons():null,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
      fixedColor: Colors.red,
       onTap: onTabTapped, // new
       currentIndex: _currentIndex, // new
       items: [
         new BottomNavigationBarItem(
           icon: Padding(
             padding: EdgeInsets.fromLTRB(0.0,0.0,0.0,0),
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




