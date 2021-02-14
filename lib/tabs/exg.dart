// Copyright 2019 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class Exg extends StatefulWidget {
  Exg({Key key}) : super(key: key);

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
                      Text(
                        'Sugar Cosmetics Voucher',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
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

      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     print("pressed");},
      //   icon: Icon(Icons.reply),
      //   label: Text("Reply"),
      //   shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.all(Radius.circular(8.0))),
      // ),

      // bottomNavigationBar : Stack(
      // children: <Widget>[
      //   Align(
      //     alignment: Alignment.bottomLeft,
      //     child: FloatingActionButton.extended(onPressed: () {
      //         print("pressed");},
      //       icon: Icon(Icons.reply),
      //       label: Text("Reply"),
      //       backgroundColor: Colors.white60,
      //       shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.all(Radius.circular(8.0))),),
      //   ),],
      // )

      // bottomNavigationBar:BottomAppBar(

      //   child: new Row(
      //     children: [
      //     Expanded(child: RaisedButton.icon(onPressed: () {},icon : Icon(Icons.reply_sharp),label:Text('Reply',style: TextStyle(fontSize: 15,color: Colors.black),),color: Colors.white,splashColor:Colors.grey[800],),),
      //     Expanded(child: RaisedButton.icon(onPressed: () {},icon : Icon(Icons.reply_all),label:Text('Reply all',style: TextStyle(fontSize: 15,color: Colors.black),),color: Colors.white,),),
      //     Expanded(child: RaisedButton.icon(onPressed: () {},icon : Icon(Icons.forward),label:Text('Forward',style: TextStyle(fontSize: 15,color: Colors.black),),color: Colors.white,),),
      //Expanded(
      //child: ElevatedButton.icon(style:ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.white70)),icon:const Icon(Icons.reply,color: Colors.black,size: 35.0,),label: Text('Reply',style: TextStyle(color: Colors.black),),onPressed: () {},)),
      //Expanded(child:  ElevatedButton.icon(icon:const Icon(Icons.reply_all),label: Text('Reply all'),onPressed: () {},)),
      // Expanded(child:ElevatedButton.icon(icon:const Icon(Icons.forward),label: Text('Forward'),onPressed: () {},)),

      // Expanded(
      //   child: IconButton(onPressed: () {},tooltip: 'Reply',icon : Icon(Icons.reply)),
      //   ),
      // Expanded(child: IconButton(onPressed: () {}, icon: Icon(Icons.reply_all,)),),
      // Expanded(child: IconButton(onPressed: () {}, icon: Icon(Icons.forward)),),

      //],
    );
  }
}
