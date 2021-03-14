import 'package:flutter/material.dart';
import 'package:demo3/tabs/mails.dart';
import 'package:demo3/tabs/meet.dart';
import 'package:demo3/tabs/drawer.dart';
// import 'package:demo3/tabs/appbar.dart';
import 'package:flutter/rendering.dart';
//import 'package:floating_search_bar/floating_search_bar.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key key}) : super(key: key);

  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {

 int _currentIndex = 0;
 final List<Widget> _children = [Mails(),Meet()];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawers(),













      appBar: AppBar(
        backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      title: _currentIndex==0?TextBox():Text('Meet',style: TextStyle(color: Colors.black),),
      centerTitle:_currentIndex==0?false:true,
      elevation: _currentIndex==0?1:0,
      actions: <Widget>[
        Container(
          width: 65,
          child: PopupMenuButton<String>(
            icon:
                CircleAvatar(backgroundImage: AssetImage('assets/deepa2.jpg')),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: '1',
                  child: Text('1'),
                ),
                PopupMenuItem<String>(
                  value: '2',
                  child: Text('2'),
                ),
              ];
            },
          ),
        ),
      ],
        ),






      body:   _children[_currentIndex],


      //  body: FloatingSearchBar.builder(
      //   itemCount: 100,
      //   itemBuilder: (BuildContext context, int index) {
      //     return ListTile(
      //       leading: Text(index.toString()),
      //     );
      //   },
      //   trailing: CircleAvatar(
      //     child: Text("RD"),
      //   ),
      //   drawer: Drawer(
      //     child: Container(),
      //   ),
      //   onChanged: (String value) {},
      //   onTap: () {},
      //   decoration: InputDecoration.collapsed(
      //     hintText: "Search...",
      //   ),
      // ),


      // body: CustomScrollView(
      //   slivers:[ 
      //     SliverAppBar(
      //        pinned: false,
      //         snap: true,
      //         floating: true,
      //         backgroundColor: Colors.white,
      //         flexibleSpace: FlexibleSpaceBar(
      //           //background: Colors.white,
      //          //iconTheme: IconThemeData(color: Colors.black),
      //         title: _currentIndex==0?TextBox():Text('Meet',style: TextStyle(color: Colors.black),),
      //         centerTitle:_currentIndex==0?false:true,
      //         ),
      //         actions: <Widget>[
      //   Container(
      //     width: 65,
      //     child: PopupMenuButton<String>(
      //       icon:
      //           CircleAvatar(backgroundImage: AssetImage('assets/deepa2.jpg')),
      //       itemBuilder: (BuildContext context) {
      //         return [
      //           PopupMenuItem<String>(
      //             value: '1',
      //             child: Text('1'),
      //           ),
      //           PopupMenuItem<String>(
      //             value: '2',
      //             child: Text('2'),
      //           ),
      //         ];
      //       },
      //     ),
      //   ),
      // ],
      //     ),
      //   ],
      //   ),




      bottomNavigationBar: BottomNavigationBar(
      fixedColor: Colors.red,
       onTap: onTabTapped, // new
       currentIndex: _currentIndex, // new
       items: [
         new BottomNavigationBarItem(
           icon: Padding(
             padding: EdgeInsets.fromLTRB(0.0,0.0,0.0,0),
             child: new Stack(
            children: <Widget>[
             new Icon(Icons.mail,size: 35,),
      new Positioned(
        right: 0,
        top: 0.0,
        child: new Container(
          padding: EdgeInsets.all(1),
          decoration: new BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
          ),
          constraints: BoxConstraints(
              minWidth: 15,
              minHeight: 15,
          ),
          child: new Text(
              '9+',
              style: new TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
          ),
        ),
      )
    ],
  ),
           ),
           label: 'Mail',
          //  backgroundColor: red,
         ),
         new BottomNavigationBarItem(
           icon: Icon(Icons.video_call,size:35.0),
           label: 'Meet',
         )
       ],
     ),
    );
  }
  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}




class TextBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     // alignment: Alignment.centerLeft,
      //color: Colors.white,
      //margin: EdgeInsets.symmetric(vertical: 6,horizontal: 4),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search in mail',
            enabledBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(color: Colors.grey[300], width: 1),
               ),),
        onTap: () {
          showSearch(context: context, delegate: Datasearch());
        },
      ),
    );
  }
}
class Datasearch extends SearchDelegate<String> {
  final names = [
    'deepa',
    'deepak',
    'sugarcosmetics',
    'balram',
    'linkedln',
    'banglore',
    'balram0698@gmail.com',
    'pandey.deepa@tcs.com',
    'sugarcosmetics@gmail.com',
    'pandeydeepak821@gmail.com',
    'balram.rathore@tcs.com',
  ];
  final recentSearches = [
    'pandey.deepa@tcs.com',
    'sugarcosmetics@gmail.com',
    'pandeydeepak821@gmail.com',
    'balram0698@gmail.com'
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for appbar
    return [
      Text('Search in mail'),
      IconButton(
        icon: Icon(Icons.mic),
        onPressed: () {},
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on the left of the appbar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    //showing results based on the selection
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something
    final suggestionList = query.isEmpty
        ? recentSearches
        : names.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.person_search),
        title: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey))
            ])),
      ),
      itemCount: suggestionList.length,
    );
  }
}
