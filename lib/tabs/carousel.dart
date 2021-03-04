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
        //padding: const EdgeInsets.all(2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  child: Container(
                    width: 50,
                    height: 25,
                    //color: Colors.blue,
                    child: Text(
                      'Join ',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: clicked == true
                              ? Colors.blue[800]
                              : Colors.grey[400]),
                    ),
                  ),
                  onTap: () {
                    showAlertDialog(context);
                  },
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
                  print("First text field:$value");
                }),
          ],
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("Dismiss"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      //title: Text("My title"),
      content: Text("No such meeting"),
      actions: [
        okButton,
      ],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
