import 'dart:ui';
import 'package:demo3/models/user_model.dart';
import 'package:flutter/material.dart';

class Gmail extends StatefulWidget {
  final User user;
  final Color image;
  final String time;
  final String text;
  final String subject;
  bool isstarred;

  Gmail(
      {this.user,
      this.image,
      this.time,
      this.text,
      this.subject,
      this.isstarred});
  @override
  _GmailState createState() => _GmailState();
}

class _GmailState extends State<Gmail> {
      bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    //final firstString =
        //'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam faucibus purus in massa. Enim lobortis scelerisque fermentum dui. Egestas quis ipsum suspendisse ultrices gravida dictum. Porttitor lacus luctus accumsan tortor. Rhoncus est pellentesque elit ullamcorper dignissim cras. Duis tristique sollicitudin nibh sit amet. Diam donec adipiscing tristique risus nec feugiat in. Ornare arcu dui vivamus arcu. Sagittis vitae et leo duis ut diam quam nulla porttitor. Faucibus pulvinar elementum integer enim neque volutpat ac. Sapien et ligula ullamcorper malesuada.';
    final secondString =
        'Enim sed faucibus turpis in eu mi. Cras adipiscing enim eu turpis egestas pretium aenean pharetra magna. Mattis nunc sed blandit libero volutpat sed cras ornare arcu. Mauris pellentesque pulvinar pellentesque habitant morbi tristique. Scelerisque in dictum non consectetur a erat. ';
    //final longString = firstString + "\n\n\n" + secondString;
    //Color x = Colors.black;
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        // leading: Icon(Icons.arrow_forward),
        actions: [
          IconButton(
              icon: Icon(Icons.archive),
              onPressed: () {
                setState(() {
                  print('pressed');
                });
              }),
          IconButton(icon: Icon(Icons.delete), onPressed: () {}),
          IconButton(icon: Icon(Icons.mail), onPressed: () {}),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Move  to"),
                  value: "moveto",
                ),
                PopupMenuItem(
                  child: Text("Snooze"),
                  value: "snooze",
                ),
                PopupMenuItem(
                  child: Text("Mark Important"),
                  value: "mark_imp",
                ),
                PopupMenuItem(
                  child: Text("Mute"),
                  value: "mute",
                ),
                PopupMenuItem(
                  child: Text("Report Spam"),
                  value: "report_spam",
                ),
                PopupMenuItem(
                  child: Text("Add to tasks"),
                  value: "add_to_tasks",
                ),
                PopupMenuItem(
                  child: Text("Help & Feedback"),
                  value: "help",
                ),
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              //subject part
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 50,
                        child: Text(
                          widget.subject,
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   width: 4.0,
                      // ),
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
                    IconButton(
                      constraints: BoxConstraints(),
                      icon: _hasBeenPressed
                          ? Icon(
                              Icons.star,
                              color: Colors.yellow,
                            )
                          : Icon(Icons.star_border_outlined),
                      iconSize: 30.0,
                      tooltip: 'Star message',
                      onPressed: ()=> {
                        setState(() => {
                          _hasBeenPressed = !_hasBeenPressed,
                        }),
                      },
                    ),
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
                          color: Colors.pink[400], shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          widget.user.name[0],
                          style: TextStyle(
                            fontSize: 25.0,
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
                            widget.user.name,
                            style:
                                TextStyle(color: Colors.black, fontSize: 20.0),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            widget.time,
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
              ),
              SizedBox(height: 40),
              Wrap(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 2, 15),
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/liner.jpg'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
                    // height: 1000,
                    // color: Colors.pink[50],
                    child: Text(
                      widget.text,
                      style: TextStyle(
                        fontSize: 15.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    height: 150,
                    width: 350,
                    margin: EdgeInsets.only(top: 12, bottom: 8),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/sugar.png'),
                          fit: BoxFit.fitWidth),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
                    // height: 1000,
                    color: Colors.pink[50],
                    child: Text(
                      secondString,
                      style: TextStyle(
                        fontSize: 15.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ],
              )
            ], //children
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        //color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            button(Icons.reply, "Reply"),
            button(Icons.reply_all, "Reply All"),
            button(Icons.arrow_forward, "Forward"),
          ],
        ),
      ),
    );
  }

  
  Widget button(IconData icon, String text) {
    return InkWell(
      onTap: () {
        print("hello deepa babe");
      },
      splashColor: Colors.black,
      child: Container(
        width: 120,
        height: 40,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 8,
          color: Colors.white60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 25,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
