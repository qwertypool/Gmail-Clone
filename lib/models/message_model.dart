import 'package:demo3/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final String subject;
  final bool isStarred;
  final bool unread;
  Message({
    this.sender,
    this.time,
    this.text,
    this.subject,
    this.isStarred,
    this.unread,
  });
}

final User currentUser =
    User(id: 0, name: 'Deepa Pandey', imageUrl: 'assets/deepa2.jpg');
final User linkedln = User(id: 1, name: 'Linkedln', imageUrl: 'assets/ln.jpg');
final User sugar =
    User(id: 2, name: 'Sugar Cosmetics', imageUrl: 'assets/s.jpg');
final User medium =
    User(id: 3, name: 'Medium Daily Digest', imageUrl: 'assets/m.jpg');
final User amazon = User(id: 4, name: 'Amazon.in', imageUrl: 'assets/A.jpg');
final User deepak =
    User(id: 5, name: 'Deepak Pandey', imageUrl: 'assets/d.jpg');
final User balram =
    User(id: 6, name: 'Balram Rathore', imageUrl: 'assets/b.jpg');
final User leetcode = User(id: 7, name: 'LeetCode', imageUrl: 'assets/L.jpg');

//Chats on Mail Screen

List<Message> chats = [
  Message(
    sender: linkedln,
    time: '10:30 PM',
    text: 'View jobs in Bengaluru,Karnataka,India, match your preferences',
    subject: '11 new jobs for "Full Stack Engineers" ',
    isStarred: false,
    unread: false,
  ),
  Message(
    sender: sugar,
    time: '9:55 PM',
    text: 'Get the best ❤️red❤️ mini Lipstick💄 Set at a complete 25% discount',
    subject: 'Limited-edition- V-day 💄',
    isStarred: false,
    unread: true,
  ),
  Message(
    sender: medium,
    time: '9:05 PM',
    text: 'Stories for Deepa Pandey : How I got engineering internships in',
    subject: 'Simple SQFlite databases examples in flutter',
    isStarred: false,
    unread: true,
  ),
  Message(
    sender: amazon,
    time: '8:30 PM',
    text: 'Amazon Orders|1 of 5 items order has been dispatched',
    subject: 'Your Amazon.in order #205-304458 of 1 item has been dispatched',
    isStarred: true,
    unread: false,
  ),
  Message(
    sender: deepak,
    time: 'Feb 12',
    text: 'Check the modified PDF attached & send feedback',
    subject: 'PDF attached',
    isStarred: true,
    unread: false,
  ),
  Message(
    sender: balram,
    time: 'Feb 12',
    text: 'Ive created the collab repo, shall we start making the project?',
    subject: 'Invitation to github collaborator',
    isStarred: true,
    unread: false,
  ),
  Message(
    sender: leetcode,
    time: 'Feb 11',
    text: 'Hello!🎉 Congratulations to our first leetcodes Pick winner',
    subject: 'Leetcode Weekly Digest',
    isStarred: true,
    unread: true,
  ),
];
