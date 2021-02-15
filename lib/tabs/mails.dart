import 'package:flutter/material.dart';
import 'package:demo3/models/message_model.dart';
import 'dart:math';

class Mails extends StatefulWidget {
  Mails({Key key}) : super(key: key);

  @override
  _MailsState createState() => _MailsState();
}

class _MailsState extends State<Mails> {
  
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
          child: Column(
       // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:EdgeInsets.only(left:15,top:10,bottom: 5),
            child: Text('INBOX',style : TextStyle(color: Colors.grey[800],fontSize: 12.5)),
          ), 
            Container(
             // _mediaQueryData = MediaQuery.of(context).size.width*10,
              height: MediaQuery.of(context).size.height * 0.72,
              width: MediaQuery.of(context).size.width * 1.0,
              padding: EdgeInsets.all(2.0),
        //decoration: BoxDecoration(color: Colors.white),
              child: ListView.builder(
                itemCount: mails.length,
                itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:3.0,bottom: 3.0,right: 0.0),
                      padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 10.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                          // backgroundImage: AssetImage(mails[index].sender.imageUrl),
                           // backgroundColor: generateRandomColor(),
                           backgroundColor: mails[index].sender.imageUrl,
                            child: Text(mails[index].sender.name[0],style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white,),
                            ),
                            radius: 26.0,
                            ),
                            SizedBox(width: 15.0,),
                            SizedBox(height: 30.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              mails[index].unread?Text(
                                mails[index].sender.name,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),
                              ):
                              Text(
                                mails[index].sender.name,
                                style: TextStyle(fontSize: 18.0),
                              ),
                              SizedBox(height: 5.0,),
                              Container(
                                width:MediaQuery.of(context).size.width*0.6 ,
                                child: mails[index].unread?Text(
                                  mails[index].subject,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.ellipsis,
                                ):Text(
                                  mails[index].subject,
                                  overflow: TextOverflow.ellipsis,
                                ),
                             ),
                              Container(
                                width:MediaQuery.of(context).size.width*0.6 ,
                                child: Text(
                                  mails[index].text,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                             
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(children: [
                      Text(mails[index].time),
                      SizedBox(height: 7.0,),
                      mails[index].isStarred?
                      Icon(Icons.star,color: Colors.yellow,):Icon(Icons.star_border_outlined),
                    ],)
                  ],
                );
               },
              ), 
              )
        ],
      ),
    );
  }
  Color generateRandomColor() {
  Random random = Random();

  return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256));
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