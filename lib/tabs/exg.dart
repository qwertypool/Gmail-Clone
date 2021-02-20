// Copyright 2019 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:demo3/models/user_model.dart';
// import 'package:demo3/models/message_model.dart';

class Exg extends StatefulWidget {
 // Exg({Key key}) : super(key: key);
   final User user;
   final Color image;
   final String time;
   final String text;
   final String subject;
   final bool isstarred;

  Exg({this.user,this.image,this.time,this.text,this.subject,this.isstarred});
  @override
  _ExgState createState() => _ExgState();
}

class _ExgState extends State<Exg> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Text(
          'Gmail Layout',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Cinzel',
            letterSpacing: 2.0,
          ),
        ),
        leading: Icon(
          Icons.email,
          color: Colors.white,
          size: 30.0,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [Icon(Icons.arrow_back_sharp)],
                  ),
                  Row(
                    children: [
                      Icon(Icons.archive),
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(Icons.delete),
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(Icons.mail),
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(Icons.more_vert),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 16.0,
              ),

              //subject part
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                       FittedBox(
                         fit: BoxFit.cover,
                         child: Text(
                              widget.subject,
                              style: TextStyle(
                               // fontSize: ResponsiveFlutter.of(context).fontSize(3),
                               fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                       ),
                      
                      SizedBox(
                        width: 8.0,
                      ),
                      Container(
                        color: Colors.grey[300],
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(4, 2, 4, 2),
                          child: Text(
                            'Inbox',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(children: [
                    Icon(Icons.star_border_outlined),
                  ])
                ],
              ),

              //Mail name part -----> round box
              SizedBox(
                height: 16.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                          color: Colors.green[200], shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          'D',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'Cinzel',
                          ),
                        ),
                      )),

                  SizedBox(
                    width: 10.0,
                  ),

                  //Mail name part -----> Name part
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Deepa Pandey',
                            style:
                                TextStyle(color: Colors.black, fontSize: 20.0),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            '5:10 PM',
                            style: TextStyle(
                                color: Colors.grey[800], fontSize: 11.0),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'to me',
                            style: TextStyle(
                                color: Colors.grey[800], fontSize: 14.0),
                          ),
                          Icon(Icons.expand_more),
                        ],
                      ),
                    ],
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Row(
                    children: [
                      Icon(Icons.reply),
                      Icon(Icons.more_vert),
                    ],
                  )
                ],
              )
            ], //children
          ),
        ),
      ),
    );
  }
}
