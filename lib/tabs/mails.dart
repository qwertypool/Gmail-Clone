import 'package:flutter/material.dart';

class Mails extends StatefulWidget {
  Mails({Key key}) : super(key: key);

  @override
  _MailsState createState() => _MailsState();
}

class _MailsState extends State<Mails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
           child : Container(
              child: Column(
                children: [
                  Padding(
                   padding: const EdgeInsets.fromLTRB(11, 15, 0, 30),
                   child: Text('INBOX',style : TextStyle(color: Colors.grey[800],fontSize: 12.5)),
                  ),
                  
                  

                ],
              ),  
           ),
          
               
          )
          
      ],
    );
  }
}
