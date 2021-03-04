import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Join extends StatefulWidget {
  //const Join({Key key}) : super(key: key);
  @override
  _JoinState createState() => _JoinState();
}

class _JoinState extends State<Join> {
  bool clicked = false;

  TextEditingController _controller;

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Join with a code',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Join ',
                  style: TextStyle(
                      fontSize: 15,
                      color: clicked == true ? Colors.blue : Colors.grey[400]),
                )),
            SizedBox(height: 20),
            Text(
              'Enter the code provided by the meeting organizer',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 20),
            TextField(
                cursorHeight: 30,
                style: TextStyle(fontSize: 18),
                decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    hintText: 'Example: abc-mnop-xyz',
                    
                    hintStyle:
                        TextStyle(color: Colors.grey[600], fontSize: 18)),
                controller: _controller,
                onTap: () {
                   clicked = true;
                },
                onChanged: (String value) async {
                  clicked = true;
                }),
          ],
        ),
      ),
    );
  }
}
