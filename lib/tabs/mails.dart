import 'package:flutter/material.dart';
import 'package:demo3/models/message_model.dart';
import 'package:demo3/tabs/gmail.dart';
// import 'package:demo3/tabs/exg.dart';
// import 'package:demo3/models/user_model.dart';
import 'dart:math';

class Mails extends StatefulWidget {
  Mails({Key key}) : super(key: key);

  @override
  _MailsState createState() => _MailsState();
}

class _MailsState extends State<Mails> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    radius: 26.0,
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
                mails[index - 1].isStarred
                    ? Icon(
                        Icons.star,
                        color: Colors.yellow,
                      )
                    : Icon(Icons.star_border_outlined),
              ],
            )
          ],
        );
      },
    );
  }

  Color generateRandomColor() {
    Random random = Random();

    return Color.fromARGB(
        255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
  }
}

// Expanded(
//            child : Container(
//               child: Column(
//                 children: [
//
//                 ],
//               ),
//            ),
//           )
