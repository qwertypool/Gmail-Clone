// import 'package:flutter/material.dart';
// // import 'package:demo3/tabs/gmail.dart';
// import 'package:demo3/tabs/compose.dart';
// class FloatingActionButtons extends StatefulWidget {
//   FloatingActionButtons({Key key}) : super(key: key);
//   @override
//   _FloatingActionButtonsState createState() => _FloatingActionButtonsState();
// }
// class _FloatingActionButtonsState extends State<FloatingActionButtons> {
//   @override
//    ScrollController _scrollController = new ScrollController(); // set controller on scrolling
//   bool show = true;
//   @override
//   void initState() {
//     super.initState();
//     handleScroll();
//   }
//   @override
//   void dispose() {
//     _scrollController.removeListener(() {});
//     super.dispose();
//   }
//   void showFloationButton() {
//     setState(() {
//       show = true;
//     });
//   }
//   void hideFloationButton() {
//     setState(() {
//       show = false;
//     });
//   }
//     void handleScroll() async {
//     _scrollController.addListener(() {
//       if (_scrollController.position.userScrollDirection ==
//           ScrollDirection.reverse) {
//           hideFloationButton();
//       }
//       if (_scrollController.position.userScrollDirection ==
//           ScrollDirection.forward) {
//           showFloationButton();
//       }
//     });
//   }

//   Widget build(BuildContext context) {
//     return Visibility(
//       visible: _show,
//           child: FloatingActionButton.extended(
      
//           onPressed: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (builder) => Compose()));
//           }, 
//         label: Text('Compose'),
//         icon: Icon(Icons.edit),
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.red,
//         tooltip: 'Upload',
//         ),
//     );
    
//   }
// }