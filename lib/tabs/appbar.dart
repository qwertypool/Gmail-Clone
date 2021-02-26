import 'package:flutter/material.dart';

class Appbars extends StatefulWidget with PreferredSizeWidget {
  Appbars({Key key,this.index}) : super(key: key);
  int index;
  @override
  _AppbarsState createState() => _AppbarsState();
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppbarsState extends State<Appbars> {
  
  @override
  Widget build(BuildContext context) {
    
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      title: widget.index==0?TextBox():Text('Meet',style: TextStyle(color: Colors.black),),
      centerTitle: widget.index==0?false:true,
      elevation: widget.index==0?1:0,
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
    );
  }
}

class TextBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      color: Colors.white,
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none, hintText: 'Search in mail'),
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
