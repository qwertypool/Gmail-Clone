import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
// import 'dart:io';

class Compose extends StatefulWidget {
  Compose({Key key}) : super(key: key);

  @override
  _ComposeState createState() => _ComposeState();
}

class _ComposeState extends State<Compose> {
  PlatformFile file;
  bool entered = false;
  var _mails = [
    'deepapandey364@gmail.com',
    'pandeydeepak821@gmail.com',
    'suvam.pandey10@gmail.com',
    'balram@gmail.com',
    'deepa.pandey@tcs.com',
    'pandeydeepa@diagoe.com'
  ];
  bool isClicked = false;
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
              color: Colors.black, fontSize: 18, fontFamily: "Roboto"),
        ),
        actions: [
          PopupMenuButton<String>(
            offset: Offset(50, 40),
            icon: Icon(
              (Icons.attachment),
              color: Colors.grey[600],
            ),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: '1',
                  child: Text('Attach File'),
                ),
                PopupMenuItem<String>(
                  value: '2',
                  child: Text('Insert From Drive'),
                ),
              ];
            },
            onSelected: (value) async {
              //if (value == '1')
              FilePickerResult result = await FilePicker.platform.pickFiles();
              if (result != null) {
                file = result.files.first;
                entered = true;
                print(file);
              }
            },
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {},
            color: Colors.grey[600],
          ),
          PopupMenuButton<String>(
              offset: Offset(50, 350),
              icon: Icon(
                (Icons.more_vert),
                color: Colors.grey[600],
              ),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: '1',
                    child: Text('Schedule Send'),
                  ),
                  PopupMenuItem<String>(
                    value: '2',
                    child: Text('Add from contacts'),
                  ),
                  PopupMenuItem<String>(
                    value: '3',
                    child: Text('Discard'),
                  ),
                  PopupMenuItem<String>(
                    value: '4',
                    child: Text('Save Draft'),
                  ),
                  PopupMenuItem<String>(
                    value: '5',
                    child: Text('Settings'),
                  ),
                  PopupMenuItem<String>(
                    value: '6',
                    child: Text('Help & Feedback'),
                  ),
                ];
              },
              onSelected: (value) {}),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text(
                  'From',
                  style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                ),
              ),
              Expanded(child: drop()),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[350], width: 1.0),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text(
                  'To',
                  style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                ),
              ),
              Expanded(
                child: TextField(
                  cursorHeight: 22,
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(Icons.arrow_drop_down),
                      onPressed: () {
                        setState(() {
                          isClicked = !isClicked;
                        });
                      },
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
            ],
          ),
          isClicked
              ? Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(color: Colors.grey[350], width: 1.0),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Text(
                            'Cc',
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            cursorHeight: 22,
                            style: TextStyle(fontSize: 18),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(color: Colors.grey[350], width: 1.0),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Text(
                            'Bcc',
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            cursorHeight: 22,
                            style: TextStyle(fontSize: 18),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(color: Colors.grey[350], width: 1.0),
                        ),
                      ),
                    ),
                  ],
                )
              : Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey[350], width: 1.0),
                    ),
                  ),
                ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  cursorHeight: 22,
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Subject",
                      hintStyle:
                          TextStyle(fontSize: 18, color: Colors.grey[700]),
                      contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20)),
                  keyboardType: TextInputType.text,
                ),
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[350], width: 1.0),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  cursorHeight: 24,
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                      hintText: "Compose email",
                      border: InputBorder.none,
                      hintStyle: entered == false
                          ? TextStyle(fontSize: 18, color: Colors.grey[700])
                          : Text(file.name),
                      contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20)),
                  keyboardType: TextInputType.text,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  String value = "deepapandey364@gmail.com";
  Widget drop() {
    return DropdownButtonHideUnderline(
      child: new DropdownButton(
        isExpanded: true,
        value: value,
        style: TextStyle(fontSize: 18, color: Colors.grey[700]),
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
      ),
    );
  }
}
