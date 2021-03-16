import 'dart:ui';
import 'package:demo3/models/user_model.dart';
import 'package:demo3/models/message_model.dart';
import 'package:demo3/tabs/mails.dart';
import 'package:flutter/material.dart';
import 'package:demo3/tabs/reply.dart';

// ignore: must_be_immutable
class Gmail extends StatefulWidget {
  final int index;
  final User user;
  final Color image;
  final String time;
  final String text;
  final String subject;
  bool isstarred;

  Gmail(
      {this.index,
      this.user,
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
  
   GlobalKey _key2 = GlobalKey();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
    super.initState();
  }

  _afterLayout(_) {
    _getSizes();
    //_getPositions();
  }

  @override
  Widget build(BuildContext context) {
    final firstString =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam faucibus purus in massa. Enim lobortis scelerisque fermentum dui. Egestas quis ipsum suspendisse ultrices gravida dictum. Porttitor lacus luctus accumsan tortor. Rhoncus est pellentesque elit ullamcorper dignissim cras. Duis tristique sollicitudin nibh sit amet. Diam donec adipiscing tristique risus nec feugiat in. Ornare arcu dui vivamus arcu. Sagittis vitae et leo duis ut diam quam nulla porttitor. Faucibus pulvinar elementum integer enim neque volutpat ac. Sapien et ligula ullamcorper malesuada.';
    //final secondString =
    //'Enim sed faucibus turpis in eu mi. Cras adipiscing enim eu turpis egestas pretium aenean pharetra magna. Mattis nunc sed blandit libero volutpat sed cras ornare arcu. Mauris pellentesque pulvinar pellentesque habitant morbi tristique. Scelerisque in dictum non consectetur a erat. ';
    //final longString = firstString + "\n\n\n" + secondString;
    //Color x = Colors.black;
    return Scaffold(
      //key: _key2,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              icon: Icon(Icons.archive),
              onPressed: () {
              //   Message deletedItem = mails.removeAt(widget.index - 1);
              //   print(deletedItem);
              //  // _key2.currentState
              //     Scaffold.of(context).showSnackBar(
              //       SnackBar(
              //         content: Text(
              //           "1 Archieved",
              //           style: TextStyle(color: Colors.white),
              //         ),
              //         action: SnackBarAction(
              //             label: "UNDO",
              //             //onPressed: () {},
              //             onPressed: () {
              //               setState(
              //                 () => mails.insert(widget.index - 1, deletedItem),
              //               );
              //               Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (builder) => Mails()));
              //             } // this is what you needed
              //             ),
              //       ),
              //     );
              }),
          IconButton(icon: Icon(Icons.delete), onPressed: () {
            mails.removeAt(widget.index - 1);
            Navigator.push(
              context,
              MaterialPageRoute(
              builder: (builder) => Mails()));
             } 
          ),
          IconButton(icon: Icon(Icons.mail), onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
              builder: (builder) => Mails()));
          }),
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
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              //subject part
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    key: _key2,
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 70,
                    child: Text(
                      widget.subject,
                      maxLines: 3,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Row(children: [
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
                    ),
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
                      onPressed: () => {
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
                      Container(
                        child: Row(
                          children: [
                            Text(
                              widget.user.name,
                              maxLines: 3,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20.0),
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
                      IconButton(
                        icon: Icon(Icons.reply),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => Reply(
                                      index: 1,
                                      title: "Reply",
                                      user: widget.user.name,
                                      subject: widget.subject,
                                      msg: widget.text,
                                      time: widget.time)));
                        },
                      ),
                      PopupMenuButton<String>(
                        offset: Offset(10, 40),
                        onSelected: (value) {
                          print(value);
                        },
                        itemBuilder: (BuildContext context) {
                          return [
                            PopupMenuItem(
                              child: Text("Reply all"),
                              value: "Reply all",
                            ),
                            PopupMenuItem(
                              child: Text("Forward"),
                              value: "Forward",
                            ),
                            PopupMenuItem(
                              child: Text("Add star"),
                              value: "Add star",
                            ),
                            PopupMenuItem(
                              child: Text("Print"),
                              value: "Print",
                            ),
                            PopupMenuItem(
                              child: Text("Mark unread"),
                              value: "Mark unread from here",
                            ),
                            PopupMenuItem(
                              child: Text("Block linkedln"),
                              value: "Block linkedln",
                            ),
                          ];
                        },
                      ),


                      //Icon(Icons.more_vert),
                    ],
                  )
                ],
              ),
              SizedBox(height: 40),
              Wrap(
                children: [
                  Row(
                    children: [
                      // Container(
                      //   margin: EdgeInsets.fromLTRB(10, 0, 2, 15),
                      //   height: 300,
                      //   width: 300,
                      //   decoration: BoxDecoration(
                      //       image: DecorationImage(
                      //         image: AssetImage('assets/liner.jpg'),
                      //         fit: BoxFit.fill,
                      //       ),
                      //       shape: BoxShape.circle),
                      // ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
                    child: Text(
                      widget.text,
                      style: TextStyle(
                        fontSize: 15.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  // Container(
                  //   height: 150,
                  //   width: 350,
                  //   margin: EdgeInsets.only(top: 12, bottom: 8),
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //         image: AssetImage('assets/sugar.png'),
                  //         fit: BoxFit.fitWidth),
                  //     shape: BoxShape.rectangle,
                  //   ),
                  // ),
                  //SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
                    // height: 1000,
                    color: Colors.pink[50],
                    child: Text(
                      firstString,
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
        child: Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button(Icons.reply, "Reply", 1, widget.user.name, widget.subject,
                  widget.text, widget.time),
              button(Icons.reply_all, "Reply All", 2, widget.user.name,
                  widget.subject, widget.text, widget.time),
              button(Icons.arrow_forward, "Forward", 3, widget.user.name,
                  widget.subject, widget.text, widget.time),
            ],
          ),
        ),
      ),
    );
  }

  _getSizes() {
    final RenderBox renderBoxRed = _key2.currentContext.findRenderObject();
    final sizeText = renderBoxRed.size;
    print("SIZE of Text: $sizeText");
  }

  Widget button(IconData icon, String text, int index, String name,
      String subject, String msg, String time) {
    return SizedBox(
      height: 46,
      child: OutlineButton.icon(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (builder) => Reply(
                      index: index,
                      title: text,
                      user: name,
                      subject: subject,
                      msg: msg,
                      time: time)));
        },
        icon: Icon(icon),
        label: Text((text), style: TextStyle(color: Colors.grey[800])),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Colors.grey[400])),
      ),
    );
  }
}
