import 'package:flutter/material.dart';
class Meet extends StatefulWidget {
  Meet({Key key}) : super(key: key);

  @override
  _MeetState createState() => _MeetState();
}

class _MeetState extends State<Meet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              
              children: [
                SizedBox(width:15),
              Expanded(
                child: FlatButton(
                padding: EdgeInsets.all(4),
                color: Colors.blue[700],
                textColor: Colors.white,
                height: 40,
                child: Text('New meeting',style: TextStyle(fontWeight: FontWeight.w600,
                fontSize: 14,
                letterSpacing: 2.0),),
                shape: RoundedRectangleBorder(side: BorderSide(
              color: Colors.grey,
              width: 1,
              style: BorderStyle.solid
            ), borderRadius: BorderRadius.circular(10)),
                onPressed: (){
                  print('You tapped on FlatButton');
                },
            ),
              ),
              SizedBox(width:15),
              Expanded(
                child:FlatButton(
            onPressed: (){},
            height: 40,
            child: Text('Join with a code', style: TextStyle(
                color: Colors.blue[700],
                fontWeight: FontWeight.w600,
                fontSize: 14,
                letterSpacing: 1.0
              )
            ),
            color: Colors.white,
            shape: RoundedRectangleBorder(side: BorderSide(
              color: Colors.grey,
              width: 1,
              style: BorderStyle.solid
            ), borderRadius: BorderRadius.circular(10)),
              )
              ),
              SizedBox(width:15),
            ],
            ),
            Container(
            margin: EdgeInsets.only(top: 100.0),
            alignment:Alignment.center,
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              image:DecorationImage(
                image:AssetImage('assets/google_meet.jpg'),
                fit: BoxFit.fill,
                 ),
                 shape: BoxShape.circle,
                 ) ,
                 //child: Text(""),
              ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Get a link you can share",style: TextStyle(fontWeight: FontWeight.bold),),
                Text("Tap New meeting ")

            ],)
          ],
          
        ),
        
      ),
      
    );
  }
}
