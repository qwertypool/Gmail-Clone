import 'package:flutter/material.dart';
import 'package:floating_search_bar/floating_search_bar.dart';
import 'package:demo3/tabs/drawer.dart';
import 'package:demo3/tabs/mails.dart';
import 'package:demo3/tabs/meet.dart';
import 'package:flutter/rendering.dart';

class Floating extends StatefulWidget {
  Floating({Key key}) : super(key: key);

  @override
  _FloatingState createState() => _FloatingState();
}


class _FloatingState extends State<Floating> {
  int _currentIndex = 0;
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
 final List<Widget> _children = [Mails(),Meet()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: FloatingSearchBar.builder(
        padding: EdgeInsets.only(top:20),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading:Text(""),
          );
        },
        trailing: CircleAvatar(
          child: Text("DP"),
        ),
        drawer: Drawers(),
        onChanged: (String value) {},
        onTap: () {},
        decoration: InputDecoration.collapsed(
          hintText: "Search...",
        ),
      ),
    );
  }
}