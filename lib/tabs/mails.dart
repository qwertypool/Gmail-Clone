import 'package:flutter/material.dart';
import 'package:demo3/models/message_model.dart';
import 'package:demo3/tabs/mailpage.dart';
import 'package:demo3/tabs/compose.dart';
import 'dart:math';
import 'package:flutter/rendering.dart';

class Mails extends StatefulWidget {
  Mails({Key key}) : super(key: key);
  @override
  _MailsState createState() => _MailsState();
}

class _MailsState extends State<Mails> {
  ScrollController _scrollController = new ScrollController();
  bool show = true;
   @override
  void initState() {
    super.initState();
    handleScroll();
  }
    @override
  void dispose() {
    _scrollController.removeListener(() {});
    super.dispose();
  }
  void showFloationButton() {
    setState(() {
      show = true;
    });
  }
  void hideFloationButton() {
    setState(() {
      show = false;
    });
  }
    void handleScroll() async {
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
          hideFloationButton();
      }
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
          showFloationButton();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: ListView.builder(
        controller: _scrollController,
        itemCount: mails.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.only(left: 15, top: 10, bottom: 5),
              child: Text('INBOX',
                  style: TextStyle(color: Colors.grey[800], fontSize: 12.5)),
            );
          }
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 3.0, bottom: 3.0, right: 0.0),
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      // backgroundImage: AssetImage(mails[index-1].sender.imageUrl),
                      // backgroundColor: generateRandomColor(),
                      backgroundColor: mails[index - 1].sender.imageUrl,
                      child: Text(
                        mails[index - 1].sender.name[0],
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      radius: 24.0,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => Gmail(
                                    user: mails[index - 1].sender,
                                    image: mails[index - 1].sender.imageUrl,
                                    time: mails[index - 1].time,
                                    text: mails[index - 1].text,
                                    subject: mails[index - 1].subject,
                                    isstarred: mails[index - 1].isStarred,
                                  ))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          mails[index - 1].unread
                              ? Text(
                                  mails[index - 1].sender.name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                )
                              : Text(
                                  mails[index - 1].sender.name,
                                  style: TextStyle(fontSize: 18.0),
                                ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: mails[index - 1].unread
                                ? Text(
                                    mails[index - 1].subject,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                  )
                                : Text(
                                    mails[index - 1].subject,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(
                              mails[index - 1].text,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Text(mails[index - 1].time),
                  SizedBox(
                    height: 7.0,
                  ),
                  IconButton(
                    constraints: BoxConstraints(),
                    icon: mails[index - 1].isStarred
                        ? Icon(
                            Icons.star,
                            color: Colors.yellow,
                          )
                        : Icon(Icons.star_border_outlined,color: Colors.grey,),
                    iconSize: 25.0,
                    tooltip: 'Star message',
                    onPressed: () => {
                      setState(() => {
                            mails[index - 1].isStarred =
                                !mails[index - 1].isStarred,
                          }),
                    },
                  ),
                ],
              )
            ],
          );
        },
      ),
      floatingActionButton: show==true? FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (builder) => Compose()));
          }, 
        label: Text('Compose'),
        icon: Icon(Icons.edit),
        backgroundColor: Colors.white,
        foregroundColor: Colors.red,
        tooltip: 'Upload',
        ):FloatingActionButton(
          child: Icon(Icons.edit,),
          backgroundColor: Colors.white,
          foregroundColor: Colors.red,
          onPressed: (){
            Navigator.push(
                context, MaterialPageRoute(builder: (builder) => Compose()));
          },
        ),
    );
  }

  Color generateRandomColor() {
    Random random = Random();
    return Color.fromARGB(
        255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
  }
}
