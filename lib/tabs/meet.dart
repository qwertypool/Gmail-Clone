import 'package:flutter/material.dart';
import 'package:demo3/tabs/carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Meet extends StatefulWidget {
  Meet({Key key}) : super(key: key);
  //CarouselController buttonCarouselController = CarouselController();

  @override
  _MeetState createState() => _MeetState();
}

class _MeetState extends State<Meet> {
  CarouselController buttonCarouselController = CarouselController();
  int currentIndex = 0;
  List imgs = [
    'assets/google_meet.jpg',
    'assets/google_meet1.jpg',
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(4),
                    color: Colors.blue[700],
                    textColor: Colors.white,
                    height: 40,
                    child: Text(
                      'New meeting',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          letterSpacing: 2.0),
                    ),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      _showModalBottomSheet(context);
                    },
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                    child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => Join()));
                    print('pushed');
                  },
                  height: 40,
                  child: Text('Join with a code',
                      style: TextStyle(
                          color: Colors.blue[700],
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          letterSpacing: 1.0)),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.grey,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10)),
                )),
                SizedBox(width: 15),
              ],
            ),
            CarouselSlider(
              items: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 100.0),
                      alignment: Alignment.center,
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/google_meet.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 200,
                            child: Text(
                              "Get a link you can share",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 25.0),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            width: 250,
                            child: Text(
                              "Tap New meeting to get a link you can send to people you want to meet with",
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 15.0),
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 100.0),
                      alignment: Alignment.center,
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/google_meet1.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 200,
                            child: Text(
                              "Your meeting is safe",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 25.0),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            width: 250,
                            child: Text(
                              "No one can join the meeting unless invited or admitted by the host",
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 15.0),
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                  ],
                ),
              ],
              options: CarouselOptions(
                height: 500.0,
                enableInfiniteScroll: false,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgs, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        currentIndex == index ? Colors.redAccent : Colors.green,
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        return BottomSheetContent();
      },
    );
  }
}

class BottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Colors.transparent,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.link,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Get a meeting link to share',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        showAlertDialog(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.video_call,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Start an instant meeting',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.calendar_today_rounded,
                          color: Colors.black),
                      title: Text(
                        'Schedule in Google Calender',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.close, color: Colors.black),
                      title: Text(
                        'Close',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
  showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = (

    FlatButton.icon(onPressed: (){},
     icon: Icon(Icons.share),
     minWidth: 40,
      label: Text('Share'),
      color: Colors.blue,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: BorderSide(color: Colors.blue)),
      )
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Here's the link to your meeting"),
    content: Text("Copy this link and send it to people you want to meet with. Be sure to save it so you can use it later, too."),
    actions: [
      okButton,
    ],
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0))),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
}


