import 'package:flutter/material.dart';

class Compose extends StatefulWidget {
  Compose({Key key}) : super(key: key);

  @override
  _ComposeState createState() => _ComposeState();
}

class _ComposeState extends State<Compose> {
 
  var _mails = [
    'deepapandey364@gmail.com',
    'pandeydeepak821@gmail.com',
    'deepa.pandey64@gmail.com',
    'balram@gmail.com',
    'deepa.pandey@tcs.com'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          'Compose',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontFamily: "Roboto"),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.attachment),
            onPressed: () {},
            color: Colors.grey[600],
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {},
            color: Colors.grey[600],
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
            color: Colors.grey[600],
          )
        ],
        elevation: 0,
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 60, 20),
                child: Text(
                  'From',
                  style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                ),
              ),
              // Text(value),
              Expanded(child: drop()),
            ],
          )
        ],
      ),
    );
  }
 String value;
  Widget drop() {
    return new DropdownButton(
      isExpanded: true,
      value:value ,
      style: TextStyle(fontSize: 18,color: Colors.grey[700]),
      items: _mails.map((value) {
        return new DropdownMenuItem(
          value: value,
          child: new Text(value),
        );
      }).toList(),
      
      onChanged: (newValue) {
        setState(() {
          value = newValue;
        });
        print(value);
      },
    );
  }
}
